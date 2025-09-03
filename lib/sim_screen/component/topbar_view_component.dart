import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class TopbarViewComponent extends StatelessWidget {
  final String numberId;
  const TopbarViewComponent({super.key, required this.numberId});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          height: 72,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  color: const Color(0xffE62129),
                  width: Get.width,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white.withOpacity(0.9),
                  width: Get.width,
                ),
              )
            ],
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  SvgPicture.asset(
                    "asset/police.svg",
                    height: 50,
                  ),
                  const SizedBox(height: 10)
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "INDONESIA",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0,
                      ),
                      textHeightBehavior: TextHeightBehavior(
                        applyHeightToFirstAscent: false,
                        applyHeightToLastDescent: false,
                      ),
                      strutStyle: StrutStyle(
                        forceStrutHeight: true,
                        height: 1.0,
                      ),
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "SURAT IZIN MENGEMUDI",
                              style: TextStyle(
                                fontSize: 10,
                                color: Color(0xffE62129),
                                fontWeight: FontWeight.bold,
                              ),
                              textHeightBehavior: TextHeightBehavior(
                                applyHeightToFirstAscent: false,
                                applyHeightToLastDescent: false,
                              ),
                            ),
                            Text(
                              numberId,
                              style: const TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 24, bottom: 16),
              child: Text(
                "DRIVING LICENSE",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
