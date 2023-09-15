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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("assets/images/facebook.png"),
                backgroundColor: Color.fromRGBO(255, 255, 255, .5),
              ),
              SizedBox(width: 8),
              Text(name),
              Spacer(),
              Obx(
                () => Checkbox(
                    value: Get.find<HomeController>().isChecked.value,
                    onChanged: (bool? value) {
                      Get.find<HomeController>().isChecked.value = value!;
                    }),
              ),
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
              Column(
                children: [
                  IconButton(
                      onPressed: () {
                        Get.find<HomeController>().upVote.value++;
                        Get.find<HomeController>().getVoteCount();
                      },
                      icon: Icon(Icons.arrow_drop_up)),
                  IconButton(
                      onPressed: () {
                        Get.find<HomeController>().downVote.value++;
                        Get.find<HomeController>().getVoteCount();
                      },
                      icon: Icon(Icons.arrow_drop_down)),
                ],
              ),
            ],
          ),
          SizedBox(height: 25),
          Obx(
            () => LinearProgressIndicator(
              backgroundColor: Colors.red,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
              value: Get.find<HomeController>().voteCount.value,
            ),
          )
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
