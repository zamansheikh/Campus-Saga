import 'package:campus_saga/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  final homecontroller = Get.put(HomeController());
  ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF207BFF),
        title: const Text(
          'Profile',
          style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontFamily: 'Boogaloo',
              fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        color: Color(0xFF207BFF),
        child: Container(
          padding: EdgeInsets.all(12),
          height: Get.height,
          width: Get.width,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.5),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(15),
              topLeft: Radius.circular(15),
            ),
            boxShadow: [
              BoxShadow(
                color: Color(0x19000000),
                blurRadius: 20,
                offset: Offset(0, -5),
                spreadRadius: 2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
