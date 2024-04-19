// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:halagula_app/src/utils/config/commonScafold.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScafold(
        appbaar: true,
        body: SingleChildScrollView(
          physics:
              AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 140,
                    width: Get.width / 2.34,
                    padding:
                        const EdgeInsets.only(left: 10, top: 10, right: 10),
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage(
                              'assets/images/pakistani.png',
                            ),
                            fit: BoxFit.cover),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text(
                      'Pakistani Artist',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    height: 140,
                    width: Get.width / 2.34,
                    padding:
                        const EdgeInsets.only(left: 10, top: 10, right: 10),
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage(
                              'assets/images/international.png',
                            ),
                            fit: BoxFit.cover),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text(
                      'International Artist',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  )
                ],
              ).marginSymmetric(vertical: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 80,
                    width: Get.width / 2.34,
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage(
                              'assets/images/events.png',
                            ),
                            fit: BoxFit.cover),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text(
                      'Events',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: Get.width / 2.34,
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage(
                              'assets/images/organizor.png',
                            ),
                            fit: BoxFit.cover),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text(
                      'Organizsers',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
              const Text(
                'Featured',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 27),
              ).marginSymmetric(vertical: 4),
              Container(
                alignment: Alignment.bottomCenter,
                height: 180,
                width: Get.width,
                padding: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage(
                          'assets/images/featured.png',
                        ),
                        fit: BoxFit.cover),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  'BAHOOSARWAR',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                      color: Colors.white),
                ),
              ),
              const Row(
                children: [
                  Text(
                    'Popular artist',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                        color: Colors.white),
                  ),
                ],
              ).marginSymmetric(vertical: 10),
              Row(
                children: [
                  Container(
                    height: 230,
                    width: Get.width / 1.1,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, i) {
                          return Container(
                            width: Get.width / 1.8,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 140,
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 10),
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          image: AssetImage(
                                            'assets/images/organizor.png',
                                          ),
                                          fit: BoxFit.cover),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'SHERY (DJ)',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          color: Colors.white),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                            width: 16,
                                            child: Image(
                                              image: AssetImage(
                                                  'assets/images/star.png'),
                                            )).marginOnly(right: 5),
                                        Text('4.4',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16,
                                                color: Colors.white)),
                                      ],
                                    ),
                                  ],
                                ).marginOnly(top: 8),
                                Text(
                                  'PKR 30k minimum',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                      color:
                                          Color.fromARGB(184, 255, 255, 255)),
                                ),
                                Text(
                                  '1.5-2 hours',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                      color:
                                          Color.fromARGB(184, 255, 255, 255)),
                                ),
                              ],
                            ),
                          ).marginOnly(right: 20);
                        }),
                  )
                ],
              ),
               const Row(
                children: [
                  Text(
                    'Suggested for you',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                        color: Colors.white),
                  ),
                ],
              ).marginSymmetric(vertical: 10),
              Row(
                children: [
                  Container(
                    height: 230,
                    width: Get.width / 1.1,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, i) {
                          return Container(
                            width: Get.width / 1.8,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 140,
                                  padding:
                                      const EdgeInsets.only(left: 10, top: 10),
                                  decoration: BoxDecoration(
                                      image: const DecorationImage(
                                          image: AssetImage(
                                            'assets/images/organizor.png',
                                          ),
                                          fit: BoxFit.cover),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'SHERY (DJ)',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          color: Colors.white),
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                            width: 16,
                                            child: Image(
                                              image: AssetImage(
                                                  'assets/images/star.png'),
                                            )).marginOnly(right: 5),
                                        Text('4.4',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16,
                                                color: Colors.white)),
                                      ],
                                    ),
                                  ],
                                ).marginOnly(top: 8),
                                Text(
                                  'PKR 30k minimum',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                      color:
                                          Color.fromARGB(184, 255, 255, 255)),
                                ),
                                Text(
                                  '1.5-2 hours',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                      color:
                                          Color.fromARGB(184, 255, 255, 255)),
                                ),
                              ],
                            ),
                          ).marginOnly(right: 20);
                        }),
                  )
                ],
              ),
              
            ],
          ).paddingSymmetric(horizontal: 16),
        ));
  }
}
