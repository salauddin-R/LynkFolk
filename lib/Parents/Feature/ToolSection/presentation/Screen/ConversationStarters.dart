import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../core/utils/colorClass.dart';
import '../../../../core/utils/fontsizeClass.dart';
import '../Widget/ConversationStartersContainer.dart';


class ConversationStarters extends StatelessWidget {
  const ConversationStarters({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors:[
             color.onbordingTop,
             color.onbordingBottom
            ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
            )
        ),
        child:Padding(
          padding:EdgeInsets.only(left:20,right: 20,top: 50),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Conversation Staters",style:FontSize.semiBold(20,color: color.Black)),
                Text("Gentle prompts to open dialogue",style:FontSize.customeTextStyle(14.0,color.Black.withValues(alpha: 0.45))),
                SizedBox(height: 15,),
                ConversationStarterContainer.FirstContainer("No Pressure,Just Connection","These prompts are invitations, not interrogations. Use them when it feels right."),
                SizedBox(height: 25),
                Text("Choose a conversation type:",style:FontSize.semiBold(20,color: color.Black)),
                SizedBox(height: 15,),
                ConversationStarterContainer.conversContainer("assets/images/ToolImage/sun.png","Light & Casual",(){}),
                SizedBox(height: 15,),
                ConversationStarterContainer.conversContainer("assets/images/ToolImage/cloud.png","Feelings Check-In",(){}),
                SizedBox(height: 15,),
                ConversationStarterContainer.conversContainer("assets/images/ToolImage/handsake.png","Connection Builders",(){
                  Get.toNamed('/ConnectionBuilder');
                }),
                SizedBox(height: 15,),
                ConversationStarterContainer.conversContainer("assets/images/ToolImage/moon.png","After a Tough Moment",(){}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}