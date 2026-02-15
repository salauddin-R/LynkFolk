import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../core/utils/CustomTextField.dart';
import '../../../../core/utils/colorClass.dart';
import '../../../../core/utils/fontsizeClass.dart';
import '../Widget/ShareLinkPage.dart';


class AiSupportPage extends StatelessWidget {
  const AiSupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          Image.asset(
            "assets/images/ProfileImage/profileBackGround.png",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),

          Container(
              color: Colors.transparent,
              padding: EdgeInsets.only(left: 16,right: 16,top: FontSize.height(context) * 0.07,bottom: 15),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Ai Support",style: FontSize.semiBold(20),),
                            Text("Get support and understanding",style: FontSize.customeTextStyle(13.0, color.DarkGray),)
                          ],
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: (){
                              Get.bottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                  ShareLinkPage()
                              );
                          },
                          child: CircleAvatar(
                            radius: 26,
                            backgroundColor: color.DarkWhite,
                            child:Icon(Icons.person_add_alt_1,),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: double.infinity,
                      height: 3,
                      color: color.Black.withValues(alpha: 0.45),
                    ),
                    SizedBox(height:5,),
                    Container(
                      height: 55,
                      width: double.infinity,
                      color: color.favoriteColor,
                      child: Row(
                        children: [
                          Container(height: 55,width: 5,color: color.fellingColor.withValues(alpha: 0.7),),
                          SizedBox(width: 14,),
                          Icon(Icons.favorite,color: color.fellingColor.withValues(alpha: 0.9),),
                          SizedBox(width: 14,),
                          Text("Feel supported and understood. A safe space for \nsupport.",style: FontSize.customeTextStyle(11, color.fellingColor),)
                        ],
                      ),
                    ),

                    Spacer(),
                    
                    Row(
                      children: [
                        Expanded(child: CustomTextField(labelText:"Type what's on your mind....",fillColor: color.DarkWhite,)),
                        SizedBox(width:7,),
                        CircleAvatar(
                          radius: 24,
                          child:Transform.rotate(
                              angle: pi*1.8,
                              child: Icon(
                                Icons.send,
                                color: color.fellingColor.withValues(alpha:1.0),
                              ),
                          ),


                          ),

                      ],
                    )

                        ],
                      )

          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 85,
              width: double.infinity,
              color: color.DarkWhite.withOpacity(0.45),
              child: Row(
                children: [
                ],
              ),
            ),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: "Home",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person),
      //       label: "Profile",
      //     ),
      //   ],
      // ),

    );
  }
}
