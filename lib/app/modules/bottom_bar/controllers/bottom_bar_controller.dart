import 'package:get/get.dart';

class BottomBarController extends GetxController {
  var currentIndex = 0.obs;
  void changePage(index) {
    currentIndex.value = index;
    update();
  }

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
