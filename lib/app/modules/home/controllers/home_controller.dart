import 'package:get/get.dart';

class HomeController extends GetxController {
  RxBool isDark = false.obs;
  RxBool isChecked = false.obs;

  RxDouble upVote = RxDouble(0.0);
  RxDouble downVote = RxDouble(0.0);

  RxDouble voteCount = RxDouble(0.0); // Initialize as 0

  @override
  void onInit() {
    super.onInit();
    getVoteCount();
  }

  void getVoteCount() {
    if (upVote.value == 0 && downVote.value == 0) {
      voteCount.value = 0;
    } else {
      voteCount.value = upVote.value / (upVote.value + downVote.value);
    }
    update();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
