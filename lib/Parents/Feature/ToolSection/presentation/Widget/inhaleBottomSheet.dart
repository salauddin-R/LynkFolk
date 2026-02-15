import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../core/utils/StyleClass.dart';
import '../../../../core/utils/colorClass.dart';
import '../../../../core/utils/fontsizeClass.dart';
import 'ConversationStartersContainer.dart';

class InhaleBottomSheet extends StatelessWidget {
  const InhaleBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: FontSize.width(context),
      height: FontSize.height(context)*0.67,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color:color.DarkWhite
      ),
      child: Column(
        children: [
          SizedBox(height:10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("How it works",style: FontSize.semiBold(20),),
              SizedBox(width:FontSize.width(context)*0.27,),
              IconButton(onPressed:(){
                Get.back(closeOverlays: false);

              }, icon:Icon(Icons.close,color: color.Black,))
            ],
          ),
          SizedBox(height:10,),
          Container(height: 2,width: double.infinity,color: color.Greay,),
          Padding(
            padding: const EdgeInsets.only(top: 8.0,bottom: 8.0,left: 15,right: 15),
            child: Column(
              children: [
                ConversationStarterContainer.bottomsheetRow("1","Breathe in through your nose for 4 seconds"),
                SizedBox(height: 8,),
                ConversationStarterContainer.bottomsheetRow("2","Hold your breath for 7 seconds"),
                SizedBox(height: 8,),
                ConversationStarterContainer.bottomsheetRow("3","Exhale slowly through your mouth for 8 seconds"),
                SizedBox(height: 8,),
                ConversationStarterContainer.bottomsheetRow("4","Repeat the cycle 3 times"),
                SizedBox(height: 8,),
                ConversationStarterContainer.bottomsheetRow("5","Focus on your breathing and relax you shoulders"),
                SizedBox(height: 8,),
                ConversationStarterContainer.bottomsheetRow("6","Visualize a peaceful scene during your breaths"),
                SizedBox(height: 8,),
                ConversationStarterContainer.bottomsheetRow("7","Inhale deeply and count to 4 in your mind"),
                SizedBox(height: 8,),
                ConversationStarterContainer.bottomsheetRow("8","Feel the tension release with each exhale"),
                SizedBox(height: 8,),
                ConversationStarterContainer.bottomsheetRow("9","Practice this exercise daily for best results"),
                SizedBox(height: 8,),
                ConversationStarterContainer.bottomsheetRow("10","End the session with a few moments of gratitude"),
                SizedBox(height: 18,),
                Container(height: 2,width: double.infinity,color: color.Greay,),
                SizedBox(height:18,),
                ElevatedButton(onPressed:(){
                  Get.back(closeOverlays: false);
                },
                    style:Styleclass.elevatedButtonStyle(context,FontSize.width(context)*0.7,radius:30),
                    child:Text("Got It",
                      style: FontSize.semiBold(16.0, color:color.DarkWhite),))
              ],
            ),
          )
        ],
      ),
    );
  }
}
