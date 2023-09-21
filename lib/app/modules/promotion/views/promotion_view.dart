import 'package:campus_saga/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/promotion_controller.dart';

class PromotionView extends GetView<PromotionController> {
  final homecontroller = Get.put(HomeController());

  PromotionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF207BFF),
        title: const Text(
          'Promotion',
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
          child: ListView(
            children: usersPostFromServer(),
          ),
        ),
      ),
    );
  }
//conent cards

  Widget _cards(var name, var post) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(10),
      height: 250,
      width: Get.width,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("assets/images/facebook.png"),
                backgroundColor: Colors.white.withOpacity(0.5),
              ),
              SizedBox(width: 8),
              Text(name),
              Spacer(),
            ],
          ),
          Text(post),
          Row(
            children: [
              Expanded(
                child: Text(
                    'Content detailsdfgfxgfhfhdfsghhhhggggggggggggggggggggggggggggggggggContent detailsdfgfxgfhfhdfsghhhhgggggggggggggggggggggggggggggggggg'),
              ),
              SizedBox(width: 5),
              Image.asset(
                'assets/images/facebook.png',
                height: 80,
                width: 80,
                fit: BoxFit
                    .fill, // This determines how the image fits within the 50x50 box.
              ),
            ],
          ),
          SizedBox(height: 25),
        ],
      ),
    );
  }

  List<Widget> usersPostFromServer() {
    List<Widget> post = [];
    for (var i = 0; i < name.length; i++) {
      post.add(_cards(name[i], content[i]));
    }
    return post;
  }
}

List<String> name = [
  "Zaman",
  "Nafiz",
  "Rahim",
  "Karim",
  "Rahim",
  "Karim",
  "Rahim",
  "Karim",
  "Rahim",
  "Karim"
];
List<String> content = [
  "Sample Post 1",
  "Sample Post 2",
  "Sample Post 3",
  "Sample Post 4",
  "Sample Post 5",
  "Sample Post 6",
  "Sample Post 7",
  "Sample Post 8",
  "Sample Post 9",
  "Sample Post 10",
];
