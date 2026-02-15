import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../core/utils/colorClass.dart';
import '../../../../core/utils/fontsizeClass.dart';
import '../Widget/ConversationStartersContainer.dart';


class ConnectionBuilder extends StatelessWidget {
  const ConnectionBuilder({super.key});

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
                Row(
                  children: [
                    IconButton(onPressed:(){
                      Get.back(closeOverlays: false);
                    }, icon:Icon(Icons.arrow_back)),
                    Text("Back to categories",style:FontSize.customeTextStyle(14.0,color.Black.withValues(alpha: 0.45))),
                  ],
                ),
                ConversationStarterContainer.conversContainer("assets/images/ToolImage/handsake.png","Connection Builders",() {

                },),
                SizedBox(height: 25,),
                Text("Tap to copy any starter:",style:FontSize.customeTextStyle(16.0,color.Black.withValues(alpha: 0.45))),
                SizedBox(height:10,),
                ConversationStarterContainer.ConnectionContainer("\"Want to [watch something/play a game/go for a walk] together?\""),
                SizedBox(height:10,),
                ConversationStarterContainer.ConnectionContainer("\"I've been thinking about you. How are you doing?\""),
                SizedBox(height:10,),
                ConversationStarterContainer.ConnectionContainer("\"Can I ask you about something? I value your opinion.\""),
                SizedBox(height:10,),
                ConversationStarterContainer.ConnectionContainer("\"Tell me about something you're proud of.\""),
                SizedBox(height:10,),
                ConversationStarterContainer.ConnectionContainer("\"What's something you wish I understood better about you?\""),
                SizedBox(height:10,),
                ConversationStarterContainer.ConnectionContainer("\"If you could travel anywhere right now, where would you go?\""),
                SizedBox(height:10,),
                ConversationStarterContainer.ConnectionContainer("\"What's a goal you're currently working towards?\""),

              ],
            ),
          ),
        ),
      ),
    );
  }
}