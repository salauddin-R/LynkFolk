
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/utils/CustomTextField.dart';
import '../../../../core/utils/StyleClass.dart';
import '../../../../core/utils/colorClass.dart';
import '../../../../core/utils/fontsizeClass.dart';
import '../Widget/ConversationStartersContainer.dart';

class ReframeThis extends StatelessWidget {
  const ReframeThis({super.key});

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
                Row(
                  children: [
                    CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.white,
                        child:IconButton(onPressed:(){
                          Get.back(closeOverlays: false);
                        }, icon:Icon(Icons.arrow_back_ios,color: Colors.black,),)
                    ),
                    SizedBox(width:30,),
                    Text("Reframe Tool",style:FontSize.semiBold(20.0,color: color.Black)),
                  ],
                ),
                SizedBox(height: 15,),
                ConversationStarterContainer.FirstContainer("No Pressure,Just Connection","These prompts are invitations, not interrogations. Use them when it feels right."),
                SizedBox(height: 25),


                Text("What's frustrating you about your teen right now?",style:FontSize.customeTextStyle(15.0, color.Black)),
                SizedBox(height:5,),
                CustomTextField(
                  labelText: "E.g.,\'They're always on their phone & ignoreing the family\'",maxLines: 3,fontsizes: 12.0,
                ),
                SizedBox(height:20,),
                ElevatedButton(onPressed:(){},
                    style:Styleclass.elevatedButtonStyle(context,double.infinity,radius: 16),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.sync,color:color.DarkWhite,fontWeight: FontWeight.bold,size: 24,),
                        Text("  Reframe This",style:TextStyle(color: color.DarkWhite,fontSize: 18,fontWeight: FontWeight.bold),)
                      ],
                    )),
                SizedBox(height:10,),
                ConversationStarterContainer.ReframeContainer(title: "Reframing doesn't excuse behavior",subtitle:"-it helps you understand it so you can address it more effectively.",richText:"Remember:",icon: Icon(Icons.lightbulb,color:Colors.amber,))

              ],
            ),
          ),
        ),
      ),
    );
  }
}
