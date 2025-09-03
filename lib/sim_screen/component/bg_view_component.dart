import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class BgViewComponent extends StatelessWidget {
  const BgViewComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Image.asset(
              "asset/bg_all.png",
              width: Get.width,
              fit: BoxFit.cover,
            ),
            Image.asset(
              "asset/ic_bg_both.png",
              width: Get.width,
              fit: BoxFit.fitWidth,
            ),
          ],
        ),
        Positioned(
          right: 50,
          top: 30,
          child: SvgPicture.asset(
            "asset/map.svg",
            width: 250,
            colorFilter: const ColorFilter.mode(
              Colors.grey,
              BlendMode.srcIn,
            ),
          ),
        )
      ],
    );
  }
}
