import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:test_project/sim_screen/component/bg_view_component.dart';
import 'package:test_project/sim_screen/component/data_view_component.dart';
import 'package:test_project/sim_screen/component/topbar_view_component.dart';

class SimScreenView extends StatelessWidget {
  const SimScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.all(20),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(12),
                ),
                child: Container(
                  width: Get.width,
                  color: Colors.white,
                  child: Stack(
                    children: [
                      const Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TopbarViewComponent(
                            numberId: "3175095801131001",
                          ),
                          Stack(
                            children: [BgViewComponent(), DataViewComponent()],
                          )
                        ],
                      ),
                      Positioned(
                        right: 24,
                        top: 50,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              "C",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                              strutStyle: StrutStyle(
                                forceStrutHeight: true,
                                height: 1.0,
                              ),
                            ),
                            const SizedBox(height: 4),
                            SvgPicture.asset("asset/Motor.svg", width: 38),
                            const SizedBox(height: 4),
                            const Text(
                              "Sepeda Motor <=250cc",
                              style: TextStyle(
                                fontSize: 7,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const Text(
                              "Motorcycle <=250cc",
                              style: TextStyle(
                                fontSize: 7,
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
