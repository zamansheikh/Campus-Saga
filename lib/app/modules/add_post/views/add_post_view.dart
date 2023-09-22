import 'package:campus_saga/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_post_controller.dart';

class AddPostView extends GetView<AddPostController> {
  final homecontroller = Get.put(HomeController());
  final addpostController = Get.put(AddPostController());
  AddPostView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF207BFF),
        title: const Text(
          'Add Post',
          style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontFamily: 'Boogaloo',
              fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        actions: [
          Obx(
            () => IconButton(
              onPressed: () {
                homecontroller.isDark.toggle();
                Get.changeTheme(
                    Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
              },
              icon: Icon((homecontroller.isDark.value)
                  ? Icons.light_mode
                  : Icons.dark_mode),
            ),
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
          child: Column(
            children: [
              DropdownButtonFormField(
                decoration: InputDecoration(
                  label: Text('Post Type'),
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 38, 38, 38),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                items: [
                  DropdownMenuItem(
                    child: Text('Issue'),
                    value: 'Issue',
                  ),
                  DropdownMenuItem(
                    child: Text('Promotional'),
                    value: 'Promotional',
                  ),
                ],
                onChanged: (value) {},
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  label: Text('Tilte'),
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 38, 38, 38),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  label: Text('Description'),
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 38, 38, 38),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
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
