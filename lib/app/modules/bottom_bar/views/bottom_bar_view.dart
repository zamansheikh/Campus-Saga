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
    );
  }
}
