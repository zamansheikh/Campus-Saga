import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bottom_bar_controller.dart';

class BottomBarView extends GetView<BottomBarController> {
  const BottomBarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottomBarView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'BottomBarView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.blue),
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
      ),
    );
  }
}
