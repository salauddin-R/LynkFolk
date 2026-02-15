import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../core/utils/colorClass.dart';
import '../../../../core/utils/fontsizeClass.dart';

class AboutLynkfolk extends StatelessWidget {
  const AboutLynkfolk({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
            children: [
              Image.asset(
                "assets/images/ProfileImage/profileBackGround.png",
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
              ),
              Container(
                  color: Colors.transparent,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: FontSize.height(context) * 0.07),
                  child: SingleChildScrollView(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                IconButton(onPressed:(){
                                  Get.back(closeOverlays: false);
                                }, icon:Icon(Icons.arrow_back)),
                                Text("About LYNKFOLK", style: FontSize.semiBold(20.0)),
                              ],
                            ),
                            const SizedBox(height:6),
                            Container(height: 2, width: double.infinity, color: color.Greay),
                            const SizedBox(height:5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/images/ProfileImage/aboutPageImage.png"),
                              ],
                            ),
                            const SizedBox(height:13),
                            Text("About", style: FontSize.smallText14_4()),
                            const SizedBox(height:13),
                            Container(
                              padding: EdgeInsets.all(15),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color:color.DarkWhite.withOpacity(0.45),
                              ),
                            )
                          ]
                      )
                  )
              )
            ]
        )
    );
  }
}
