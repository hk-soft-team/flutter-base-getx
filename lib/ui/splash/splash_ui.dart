import 'package:example/controller/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SplashUi extends GetView<SplashController> {
  const SplashUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Stack(
        alignment: Alignment.topCenter,
        children: [
          SizedBox(
            width: Get.width.w,
            height: Get.height.h,
            child: Image.asset(
              "assets/images/splash/background.png",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 300,
            child: SvgPicture.asset(
              "assets/images/splash/logo.svg",
              fit: BoxFit.cover,
            ),
          ),
        ],
      );
}
