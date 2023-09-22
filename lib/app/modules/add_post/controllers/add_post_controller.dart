import 'package:get/get.dart';

class AddPostController extends GetxController {
 
 RxString selectedPostType = 'Post Type'.obs;
 RxList<String> postType = [
    'Issue',
    'Promotional',
   
  ].obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
