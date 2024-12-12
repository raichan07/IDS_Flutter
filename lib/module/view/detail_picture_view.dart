import 'package:mini_project/core.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Inisialisasi controller
   final DetailController controller = Get.find<DetailController>();

    // Cek apakah data picture kosong atau tidak
    if (controller.picture.isEmpty) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Detail Picture"),
          // Tombol kembali
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Get.back(), // Navigasi kembali
          ),
        ),
        body: Center(
          child: Text("No Picture Data Available"),
        ),
      );
    }

    // Jika data picture ada
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Picture"),
        // Tombol kembali
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Get.back(), // Navigasi kembali
        ),
      ),
      body: DetailPictureWidget(), // Menggunakan widget yang telah dipindahkan
    );
  }
}


