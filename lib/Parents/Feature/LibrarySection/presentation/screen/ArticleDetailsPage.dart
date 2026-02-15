import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../core/utils/colorClass.dart';
import '../../../../core/utils/fontsizeClass.dart';

class AritcleDetailsPage extends StatelessWidget {
  const AritcleDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color.onbordingTop, color.onbordingBottom],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(20),
              child:SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Row(
                    children: [
                      Card(
                        color: color.DarkWhite,

                        shape:RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: IconButton(onPressed:(){
                          Get.back(closeOverlays: false);
                        },
                          disabledColor: Colors.blue,
                          icon:Icon(Icons.arrow_back_ios,color: color.Black,size: 20,),
                          padding: EdgeInsets.only(left: 7),
                          constraints: BoxConstraints(),
                        ),
                      ),
                      SizedBox(width:FontSize.width(context)*0.12,),
                      Text("Article Details",style: FontSize.semiBold(20),)
                    ],
                  ),
                    SizedBox(height: 10,),
                    Text("Understanding Teen Mood Swings",style: FontSize.semiBold(20,color: color.Black),),
                    SizedBox(height: 7,),
                    Text("Attachment",style: FontSize.customeTextStyle(14, color.Black),),
                    SizedBox(height: 15,),
                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: color.DarkWhite,
                        border: Border.all(color: color.Greay,width: 1),
                        borderRadius: BorderRadius.circular(7)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.insert_drive_file,color: color.Black,),
                          SizedBox(width: 15,),
                          Text("File-1.pdf")
                        ],
                      ),
                    ),
                    SizedBox(height: 25,),
                    Text("Mood swings are a normal part of adolescent development. During this phase, teenagers experience significant hormonal changes and brain restructuring, particularly in the prefrontal cortex, which governs emotional regulation and decision-making."),
                    SizedBox(height: 25,),
                    Text("In this video, Dr. Sarah Jenkins breaks down the science of why these fluctuations occur and provides three actionable strategies for parents to maintain a calm connection when tensions run high.")
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
