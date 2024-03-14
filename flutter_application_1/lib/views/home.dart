import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constant.dart';
import 'package:flutter_application_1/controller/homecontroller.dart';
import 'package:flutter_application_1/views/calculator.dart';
import 'package:flutter_application_1/views/studentlist.dart';
import 'package:get/get.dart';

HomeController homeController = Get.put(HomeController());
var screns = [
  Calculator(),
  Calculator(),
  Students(),
  Calculator(),
  //Text("Home"),
  //Text("Alerts"),
  //Text("Friends"),
  //Text("Settings"),
];

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          color: primaryColor,
          backgroundColor: appWhite,
          buttonBackgroundColor: primaryColor,
          items: [
            Icon(
              Icons.home,
              color: appWhite,
            ),
            Icon(
              Icons.notifications,
              color: appWhite,
            ),
            Icon(
              Icons.person,
              color: appWhite,
            ),
            Icon(
              Icons.settings,
              color: appWhite,
            ),
          ],
          onTap: (index) {
            homeController.updateSelectedPage(index);
            //print("clicked"$Index);
          }),
      body: Obx(() => Center(
            child: screns[homeController.selectedPage.value],
          )),
    );
  }
}
