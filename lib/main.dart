import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'routes/app_pages.dart';
import 'routes/app_route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute.PHOTOS, // Menggunakan AppRoute untuk rute awal
      getPages: AppPages.routes, // Menggunakan daftar halaman dari AppPages
    );
  }
}
