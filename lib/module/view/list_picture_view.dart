import 'package:mini_project/core.dart';

class ListPictureView extends StatelessWidget {
  // Tidak perlu lagi menggunakan Get.put(), cukup ambil controller dengan Get.find()
  final ListPictureController controller = Get.find<ListPictureController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Photo"),
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }
        return ListView.builder(
          itemCount: controller.pictures.length,
          itemBuilder: (context, index) {
            final picture = controller.pictures[index];
            return ListPictureWidget(picture: picture); // Gunakan widget terpisah
          },
        );
      }),
    );
  }
}
