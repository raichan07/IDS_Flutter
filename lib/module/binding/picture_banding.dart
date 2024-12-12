import 'package:mini_project/core.dart';

class ListPictureBinding extends Bindings {
  @override
  void dependencies() {
    // Menggunakan lazyPut untuk ListPictureController
    Get.lazyPut<ListPictureController>(() => ListPictureController());
    // Jika diperlukan, kamu juga bisa menambahkan controller lainnya, seperti DetailController
    Get.lazyPut<DetailController>(() => DetailController());
  }
}
