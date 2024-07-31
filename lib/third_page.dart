import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/list_controller.dart';
import 'controllers/tap_controller.dart';
import 'home_page.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: const EdgeInsets.all(20),
          width: double.maxFinite,
          height: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(2),
                        width: double.maxFinite,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xFF89dad0)),
                        child: Center(
                            child: Text(
                                "Total Value ${Get.find<TapController>().z}",
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ))),
                      ),
                      Container(
                          margin: const EdgeInsets.all(2),
                          width: double.maxFinite,
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xFF89dad0)),
                          child: Center(
                              child: Text(
                                  "Y value ${Get.find<TapController>().y.value}",
                                  style: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  )))),
                    ],
                  )),
              GestureDetector(
                onTap: () {
                  Get.to(() => const HomePage());
                },
                child: Container(
                    margin: const EdgeInsets.all(2),
                    width: double.maxFinite,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF89dad0)),
                    child: Center(
                        child: Text("X value ${Get.find<TapController>().x}",
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            )))),
              ),
              GestureDetector(
                onTap: () {
                  Get.find<TapController>().increasY();
                },
                child: Container(
                    margin: const EdgeInsets.all(2),
                    width: double.maxFinite,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF89dad0)),
                    child: const Center(
                        child: Text("Increase Y",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            )))),
              ),
              GestureDetector(
                onTap: () {
                  Get.find<TapController>().totalXY();
                },
                child: Container(
                    margin: const EdgeInsets.all(2),
                    width: double.maxFinite,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF89dad0)),
                    child: const Center(
                        child: Text("Total X + Y",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            )))),
              ),
              GestureDetector(
                onTap: () {
                  Get.find<ListController>()
                      .setValues(Get.find<TapController>().z);
                },
                child: Container(
                    margin: const EdgeInsets.all(2),
                    width: double.maxFinite,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF89dad0)),
                    child: const Center(
                        child: Text("Save Total",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            )))),
              ),
            ],
          )),
    );
  }
}
