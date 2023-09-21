import 'package:campus_saga/app/modules/add_post/views/add_post_view.dart';
import 'package:campus_saga/app/modules/home/views/home_view.dart';
import 'package:campus_saga/app/modules/profile/views/profile_view.dart';
import 'package:campus_saga/app/modules/promotion/views/promotion_view.dart';
import 'package:campus_saga/app/modules/ranking/views/ranking_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bottom_bar_controller.dart';

class BottomBarView extends GetView<BottomBarController> {
  BottomBarView({Key? key}) : super(key: key);
  final controller = Get.put(BottomBarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Obx(
        () => IndexedStack(
          index: controller.currentIndex.value,
          children: [
            HomeView(),
            PromotionView(),
            AddPostView(),
            RankingView(),
            ProfileView(),
          ],
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor:
              Colors.white.withOpacity(0.95), // Set the background color here
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15),
            topLeft: Radius.circular(15),
          ),
          child: GetBuilder<BottomBarController>(
            builder: (controller) {
              return BottomNavigationBar(
                currentIndex: controller.currentIndex.value,
                iconSize: 30,
                selectedItemColor: Color(0xFF207BFF),
                unselectedItemColor: Colors.black,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.campaign),
                    label: 'Promotion',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.add_circle_rounded),
                    label: 'Add Post',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.school),
                    label: 'Promotion',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.manage_accounts),
                    label: 'Ranking',
                  ),
                ],
                onTap: controller.changePage,
                type: BottomNavigationBarType.shifting,
              );
            },
          ),
        ),
      ),
    );
  }
}
