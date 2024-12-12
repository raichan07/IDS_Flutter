import 'package:mini_project/core.dart';

class ListPictureController extends GetxController {
  var isLoading = true.obs;
  var pictures = <dynamic>[].obs;

  final ApiService apiService = ApiService();

  @override
  void onInit() {
    fetchPictures();
    super.onInit();
  }

  void fetchPictures() async {
    try {
      isLoading(true);
      var data = await apiService.fetchPictures();

      // Sanitasi data
      var sanitizedData = data.map((picture) {
        return {
          'author': picture['author'] ?? 'Unknown Author',
          'image_url': picture['download_url'] ?? 'https://via.placeholder.com/200',
          'id': picture['id'] ?? 'no id',
        };
      }).toList();

      pictures.assignAll(sanitizedData);
    } catch (e) {
      Get.snackbar("Error", e.toString());
    } finally {
      isLoading(false);
    }
  }
}
