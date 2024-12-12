// lib/features/banding/widgets/list_picture_widget.dart
import 'package:mini_project/core.dart';

class ListPictureWidget extends StatelessWidget {
  final Map<String, dynamic> picture;

  const ListPictureWidget({Key? key, required this.picture}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String imageUrl = picture['image_url'] ?? 'https://via.placeholder.com/200';
    final String author = picture['author'] ?? 'Unknown Author';
    final String id = picture['id'] ?? 'No ID';

    return Card(
      margin: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
          // Menyiapkan controller DetailController dan mengirim data
          final DetailController detailController = Get.put(DetailController());

          // Mengirim data ke controller sebelum navigasi
          detailController.id = id;
         detailController.picture.value = picture;


          // Menampilkan id di console untuk debugging
          print("ID: $id");

          // Navigasi ke halaman DetailPage setelah data disiapkan di controller
      Get.toNamed(AppRoute.DETAIL, arguments: {
        'id': id,
        'picture': picture,
      });
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              imageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200,
              errorBuilder: (context, error, stackTrace) => Container(
                height: 200,
                color: Colors.grey,
                child: const Icon(Icons.error, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "by: $author",
                style: const TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ),
      ),
    );
  }
}