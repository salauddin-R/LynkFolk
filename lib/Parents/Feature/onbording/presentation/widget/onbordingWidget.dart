import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/utils/colorClass.dart';
import '../../../../core/utils/fontsizeClass.dart';


class Onbordingwidget extends StatelessWidget {
  final String headline;
  final String body;
  final String route;
  const Onbordingwidget({required this.body,required this.headline,required this.route,super.key});

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration:BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              color.onbordingTop,
              color.onbordingBottom
              ]
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: height*.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed:(){
                  Get.toNamed('/Feelingpage');
                }, child:Text("Skip",style:FontSize.smallText14_Bold()),),
                SizedBox(width:25,)
              ],
            ),
            SizedBox(height: height*.1,),
            Image.asset("assets/images/onbording/Group 8721.png"),
            SizedBox(height:height*0.026,),
          Text("$headline",style:FontSize.BigText()),
            Text("$body",style:FontSize.smallText14_4()),
            Spacer(),
            GestureDetector(
              child:Image.asset("assets/images/onbording/Frame 1171275928.png"),
                onTap:(){
                  Get.toNamed(route);
                }
            ),

            SizedBox(height: height*0.09,)
          ],
        ),
      ),
    );
  }
}
