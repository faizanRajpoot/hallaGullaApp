// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class CommonScafold extends StatelessWidget {
  Widget body;
  final appbaar;
  RxBool isHovered = false.obs;
  var check = false;
  RxBool mobileservicetap = false.obs;

  CommonScafold({super.key, required this.body, this.appbaar = false});

  Widget appbar(context) => Container(
        width: 650,
        height: 100,
        color: Colors.amberAccent,
        child: Text('data'),
      ).marginOnly(left: Get.width / 2.3, top: 35);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xff292929),
      appBar:appbaar? AppBar(
        bottom: PreferredSize(
          preferredSize:
              const Size.fromHeight(10), // Adjust the height of the border
          child: Container(
            padding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
            height: 80,
            decoration: const BoxDecoration(
              color: Color(0xffF33535),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100)),
              child: const TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    size: 20,
                    color: Color.fromARGB(178, 115, 115, 115),
                  ),
                  border: InputBorder.none,
                  hintText: "Search for artist & events",
                  hintStyle: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 19,
                      color: Color.fromARGB(178, 115, 115, 115)),
                ),
              ),
            ).marginSymmetric(horizontal: 10),
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white, size: 40),

        toolbarHeight: 110.0,
        actions: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100), color: Colors.white),
          ).marginOnly(right: 10)
        ],
        title: const Text(
          'Johar Town Phase 1, Lahore',
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(35.0), // Adjust the radius as needed
          ),
        ),
        backgroundColor: const Color(0xffF33535),
      ):null,
      body: body,

      drawer: Drawer(
          backgroundColor:const Color(0xff292929),
          child: ListView(padding: EdgeInsets.zero, children: [
            ListTile(
              title: const Text(
                "Home",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w200),
              ),
              onTap: () {
                // Get.toNamed(Routes.homeRoute);
              },
            ),
          ])),
    
    );
  }
}
