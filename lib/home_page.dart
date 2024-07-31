import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/controllers/tap_controller.dart';
import 'package:getx_project/first_page.dart';
import 'package:getx_project/second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.put(TapController());
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(20),
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<TapController>(builder: (tapController) {
              return Container(
                  margin: EdgeInsets.all(10),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF89dad0)),
                  child: Center(
                      child: Text(controller.x.toString(),
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ))));
            }),
            GestureDetector(
              onTap: () {
                controller.increaseX();
              },
              child: Container(
                  margin: EdgeInsets.all(10),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF89dad0)),
                  child: Center(
                      child: Text("tap",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          )))),
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => FirstPage());
              },
              child: Container(
                  margin: EdgeInsets.all(10),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF89dad0)),
                  child: Center(
                      child: Text("Go to First Page",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          )))),
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => SecondPage());
              },
              child: Container(
                  margin: EdgeInsets.all(10),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFF89dad0)),
                  child: Center(
                      child: Text("Go to Second Page",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          )))),
            ),
            Container(
                margin: EdgeInsets.all(10),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFF89dad0)),
                child: Center(
                    child: Text("tap",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        )))),
          ],
        ),
      ),
    );
  }
}
