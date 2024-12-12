import 'package:mini_project/core.dart';

class AppPages {
  static final routes = [
    // Halaman ListPicture dengan binding untuk ListPictureController
    GetPage(
      name: AppRoute.PHOTOS,
      page: () => ListPictureView(),
      binding: ListPictureBinding(), // Menambahkan binding di sini
    ),
    // Halaman Detail dengan binding untuk DetailController
    GetPage(
      name: AppRoute.DETAIL,
      page: () => DetailPage(),
      binding: ListPictureBinding(), // Menambahkan binding jika DetailController juga dibutuhkan
    ),
  ];
}
