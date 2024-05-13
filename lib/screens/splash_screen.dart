import 'dart:ui';

import 'package:capistran0442/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gap/gap.dart';
import 'package:shape_of_view_null_safe/shape_of_view_null_safe.dart';

class SplashSceen extends StatelessWidget {
  const SplashSceen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SplashImage(),
          const Gap(20),
          Title(),
          const Gap(20),
          MyButton(),
        ],
      ),
    );
  }

  Widget SplashImage() {
    return ShapeOfView(
        shape: ArcShape(
            direction: ArcDirection.Outside,
            height: 20,
            position: ArcPosition.Bottom),
        elevation: 0,
        child: Container(
          height: Get.height / 1.4,
          width: Get.width,
          decoration: BoxDecoration(color: Color(0xffdc1709)),
          child: Image.asset("assets/refaccionaria1.png"),
        ));
  }

  Widget Title() {
    return Text(
      "Refaccionaria",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600),
    );
  }

  Widget MyButton() {
    return GestureDetector(
      onTap: () {
        Get.to(DashboardScreen());
      },
      child: Container(
          height: 52,
          padding: EdgeInsets.symmetric(horizontal: 32.0),
          decoration: BoxDecoration(
              color: Color(0xff050505),
              borderRadius: BorderRadius.circular(42)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("Comenzar Ahora",
                  style: TextStyle(
                      color: Color(0xffffffff), fontWeight: FontWeight.w700)),
              Gap(10),
              Container(
                padding: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 4),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.white,
                ),
              )
            ],
          )),
    );
  }
}
