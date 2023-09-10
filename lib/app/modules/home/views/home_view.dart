import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Campus Saga',
          style: TextStyle(fontFamily: 'Boogaloo'),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.dark_mode)),
        ],
        title: const Text(
          'Campus Saga',
          style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontFamily: 'Boogaloo',
              fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        actions: IconButtonTheme(
          data: IconButtonThemeData(
            iconSize: 30,
            color: Colors.white,
          ),
          child: IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {},
        ),
      ),
      body: const Center(
        child: Text(
          ' zaman ',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
