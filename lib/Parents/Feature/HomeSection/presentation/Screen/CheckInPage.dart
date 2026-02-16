import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/utils/StyleClass.dart';
import '../../../../core/utils/colorClass.dart';
import '../../../../core/utils/fontsizeClass.dart';
import '../Widget/CircleFeeling.dart';
import '../Widget/IndecatorPersentRow.dart';

class CheckInPage extends StatelessWidget {
  const CheckInPage({super.key});

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
              padding: EdgeInsets.symmetric(horizontal:20, vertical: FontSize.height(context) * 0.07),
              child: SingleChildScrollView(
                  child: Column(
                      children:[
                       Text("Check-In",style: FontSize.semiBold(20),),
                        SizedBox(height:FontSize.height(context)*0.05),
                        Text("LYNKFOLK WELNEWW",style: FontSize.semiBold(16,color: color.fellingColor),),
                        Text("How are you feeling\ntoday?",textAlign: TextAlign.center,style: FontSize.semiBold(29)),
                        SizedBox(height: 10,),
                        Text("Your emotional well-being matters as much as your teen's",textAlign: TextAlign.center,style: FontSize.semiBold(16),),
                        SizedBox(height:FontSize.height(context)*0.05),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Circlefeeling.Circlefellingavater("😊", "Happy",(){}),
                            Circlefeeling.Circlefellingavater("😊", "Happy",(){}),
                            Circlefeeling.Circlefellingavater("😊", "Happy",(){}),
                            Circlefeeling.Circlefellingavater("😊", "Happy",(){}),
                            Circlefeeling.Circlefellingavater("😊", "Happy",(){}),
                            Circlefeeling.Circlefellingavater("😊", "Happy",(){}),
                          ],
                        ),
                        SizedBox(height:FontSize.height(context)*0.07),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color:color.DarkWhite.withOpacity(0.45),
                            border: Border.all(color: color.DarkWhite,width: 1 )
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("   How intense is this feeling?",style: FontSize.semiBold(16),),
                                  Text("72%   ",style: FontSize.semiBold(16))
                                ],
                              ),
                              SizedBox(height:12,),
                              IndecatorPersentRow(
                                percentens: 0.71,
                              ),
                              SizedBox(height:12,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("   Mild",style: FontSize.smallText14_4(),),
                                  Text("Overwhelming   ",style: FontSize.smallText14_4())
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height:FontSize.height(context)*0.09),
                        ElevatedButton(onPressed:(){
                          Get.toNamed('/HomeWelcomePage');
                        },
                            style: Styleclass.elevatedButtonStyle(context,double.infinity,radius: 30),
                            child:Text("Check-In",style: FontSize.semiBold(16,color: color.DarkWhite),)),
                        SizedBox(height:FontSize.height(context)*0.02),
                      TextButton(onPressed: (){
                        Get.back(closeOverlays: false);
                      }, child:Text("SKIP FOR NOW",style:FontSize.semiBold(16,color: color.Black.withOpacity(0.6)),))
                      ]
                  )))
        ],
      ),
    );
  }
}
