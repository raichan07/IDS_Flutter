import 'package:mini_project/core.dart';

class DetailPictureWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Inisialisasi controller
    final DetailController controller = Get.put(DetailController());

    // Menggunakan Obx untuk merender UI secara reaktif
    return Obx(() {
      // Cek apakah data picture kosong atau tidak
      if (controller.picture.isEmpty) {
        return Center(
          child: Text("No Picture Data Available"),
        );
      }

      // Jika data picture ada
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gambar
            Image.network(
              controller.picture['image_url'] ?? 'https://via.placeholder.com/300',
              fit: BoxFit.cover,
              width: double.infinity,
              height: 300,
              errorBuilder: (context, error, stackTrace) => Container(
                height: 300,
                color: Colors.grey,
                child: const Icon(Icons.error, color: Colors.white),
              ),
            ),
            const SizedBox(height: 16),
            // Informasi
            Text(
              "By: ${controller.picture['author'] ?? 'Unknown Author'}",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 8),
          ],
        ),
      );
    });
  }
}
