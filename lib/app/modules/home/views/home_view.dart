import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF207BFF),
      appBar: AppBar(
<<<<<<< HEAD
        elevation: 0.0,
        backgroundColor: Color(0xFF207BFF),
        title: const Text(
          'Campus Saga',
          style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontFamily: 'Boogaloo',
              fontWeight: FontWeight.w400),
=======
        backgroundColor: Color(0xFF207BFF),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.info)),
        title: const Text(
          'Campus Saga',
          style: TextStyle(fontFamily: 'Boogaloo', fontSize: 30),
>>>>>>> 65942bea6606587d9a68479546a8ac6796987e8e
        ),
        centerTitle: true,
<<<<<<< HEAD
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
=======
        elevation: 0,
>>>>>>> 65942bea6606587d9a68479546a8ac6796987e8e
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
<<<<<<< HEAD
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
=======
        padding: EdgeInsets.only(
          top: 15,
          left: 15,
          right: 15,
        ),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(.5),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, -2),
            ),
          ],
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _cardContainer(),
              SizedBox(
                height: 15,
              ),
              _cardContainer(),
              SizedBox(
                height: 15,
              ),
              _cardContainer(),
              SizedBox(
                height: 15,
              ),
              _cardContainer(),
              SizedBox(
                height: 15,
              ),
              _cardContainer(),
              SizedBox(
                height: 15,
              ),
              _cardContainer(),
              SizedBox(
                height: 15,
              ),
            ],
>>>>>>> 65942bea6606587d9a68479546a8ac6796987e8e
          ),
        ),
      ),
    );
  }

<<<<<<< HEAD
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
=======
  Container _cardContainer() {
    return Container(
      padding: EdgeInsets.all(10),
      height: 200,
      width: Get.width,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.5),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/temp/jenny.png'),
              ),
              SizedBox(
                width: 10,
              ),
              Text("Anonymous"),
              Spacer(),
              Checkbox(
                value: false,
                onChanged: (bool? newValue) {},
              )
            ],
          )
        ],
>>>>>>> 65942bea6606587d9a68479546a8ac6796987e8e
      ),
    );
  }
}
