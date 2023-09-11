import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFF207BFF),
        title: const Text(
          'Campus Saga',
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
                Get.find<HomeController>().isDark.toggle();
                Get.changeTheme(
                    Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
              },
              icon: Icon((Get.find<HomeController>().isDark.value)
                  ? Icons.light_mode
                  : Icons.dark_mode),
            ),
          ),
        ],
        leading: IconButton(
          icon: Icon(Icons.info),
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
            color: Color.fromRGBO(255, 255, 255, .5),
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                _cards(),
                _cards(),
                _cards(),
                _cards(),
                _cards(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _cards() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(10),
      height: 250,
      width: Get.width,
      decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, .5),
        borderRadius: BorderRadius.all(Radius.circular(15)),
        boxShadow: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 8,
            offset: Offset(0, 1),
            spreadRadius: 2,
          )
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage("assets/images/facebook.png"),
            backgroundColor: Color.fromRGBO(255, 255, 255, .5),
          ),
          SizedBox(width: 8),
          Text('nafiz')
        ],
      ),
    );
  }
}
