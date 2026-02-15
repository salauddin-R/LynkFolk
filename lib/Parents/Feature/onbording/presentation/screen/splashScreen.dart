import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/utils/colorClass.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 2), () {
        Get.toNamed('/awareness');
      });
    });
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [color.onbordingTop, color.onbordingBottom],
          ),
        ),
        child: Stack(
          children: [
            /// Top Image
            Positioned(
              top: 0,
              right: 0,
              child: Image.asset("assets/images/onbording/Vector 1.png"),
            ),

            /// Center Logo
            Center(
              child: Image.asset(
                "assets/images/onbording/logo 2.png",
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width * 0.8,
              ),
            ),

            /// Bottom Image
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset("assets/images/onbording/Vector2.png"),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
