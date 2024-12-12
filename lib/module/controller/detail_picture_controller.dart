import 'package:get/get.dart';

class DetailController extends GetxController {
  // Menambahkan obs untuk loading state
  var isLoading = true.obs;
  late String id;
  late RxMap<String, dynamic> picture = RxMap<String, dynamic>(); // Inisialisasi RxMap yang tepat

  @override
  void onInit() {
    super.onInit();

    // Pastikan Get.arguments berisi data yang benar
    final arguments = Get.arguments;

    if (arguments != null && arguments is Map<String, dynamic>) {
      id = arguments['id'] ?? 'No ID';
      picture.value = arguments['picture'] ?? {}; // Menetapkan nilai ke picture yang reactive
    } else {
      id = 'No ID';
      picture.value = {}; // Mengosongkan data picture
    }
  }

  // Metode untuk mengubah loading state
  void setLoading(bool value) {
    isLoading.value = value;
  }
}
