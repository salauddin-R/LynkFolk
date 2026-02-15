import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../core/utils/colorClass.dart';
import '../../../../core/utils/fontsizeClass.dart';
import '../Widget/SupportToolContainer.dart';



class SupportTools extends StatelessWidget {
  const SupportTools({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset("assets/images/ProfileImage/profileBackGround.png",fit:BoxFit.cover,),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 48,right: 20,left: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Support Tools",style:FontSize.semiBold(20.0,color:color.Black.withValues(alpha: 0.89) ) ),
                    Text("Tools for understanding and connection",style:FontSize.customeTextStyle(16,color.Black)),
                    SizedBox(height: 20,),
                    Container(
                      padding:EdgeInsets.all(7),
                      height:100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color:Colors.white.withValues(alpha: 0.45),
                          border:Border(
                            left: BorderSide(color: Colors.purple,width: 5,),
                            right: BorderSide(color: Colors.purple,width:1,),
                            top: BorderSide(color: Colors.purple,width:1,),
                            bottom: BorderSide(color: Colors.purple,width:1,),
                          )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: CircleAvatar(
                              radius: 19,
                              backgroundColor:Colors.purple,
                              child: Icon(Icons.verified_user_outlined,color:Colors.white,),
                            ),
                          ),
                          SizedBox(width:8,),
                          Expanded(
                            child: Column(
                              children: [
                                Text("These tools support understanding -not control.",textAlign: TextAlign.start,style: FontSize.semiBold( 14.0,color: color.fellingColor.withValues(alpha: 0.7)),),
                                Text("helping you respond thoughtfully, not react emotionally.",textAlign: TextAlign.start,style: FontSize.customeTextStyle(13.0,color.Black))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 25,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Get.toNamed('/BreathingPage');
                          },
                          child: SupportToolContainer(
                            icon: Icons.air,
                            title: "Try Breathing",
                            subtitle: "Slow down before reacting",
                          ),
                        ),
                        GestureDetector(
                          onTap: (){},
                          child: SupportToolContainer(
                            image: "assets/images/ToolImage/flower.png",
                            title: "Emotion Translator",
                            subtitle: "Understand what behavior expresses",
                          ),
                        )
                      ],
                    ),
                    SizedBox(height:MediaQuery.of(context).size.height*0.03,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: (){
                            Get.toNamed('/ReframeTool');
                          },
                          child: SupportToolContainer(
                            icon: Icons.sync,
                            title: "Reframe tool",
                            subtitle: "Turn frustration into understanding",
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Get.toNamed('/ConversationStarters');
                          },
                          child: SupportToolContainer(
                            icon: Icons.auto_awesome,
                            title: "Conversation Starters",
                            subtitle: "Gentle prompts to open dialogue",
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}