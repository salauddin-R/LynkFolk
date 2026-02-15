import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/Parents/Feature/HomeSection/presentation/Widget/reuseAvat.dart';

import '../../../../core/utils/StyleClass.dart';
import '../../../../core/utils/colorClass.dart';
import '../../../../core/utils/fontsizeClass.dart';
import 'IndecatorPersentRow.dart';

class HomepageWidget extends StatelessWidget {
  final Widget? circleProgress;
  final OnTap? onTap;
  const HomepageWidget({super.key,this.circleProgress,this.onTap});

  @override
  Widget build(BuildContext context) {
    return Stack(
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
                      // SizedBox(height: FontSize.height(context)*0.09,),
                      Row(
                        children: [
                          ReuseAvater.reUseAvatar("https://i.natgeofe.com/n/548467d8-c5f1-4551-9f58-6817a8d2c45e/NationalGeographic_2572187_16x9.jpg?w=1200"),
                          SizedBox(width: 10,),
                          Text("Welcome to lynkfok",style: FontSize.semiBold(16),),
                          Spacer(),
                          CircleAvatar(
                            radius: 26,
                            backgroundColor: color.DarkWhite,
                            child:Icon(Icons.notifications_none,),
                          ),
                        ],
                      ),
                      SizedBox(height: 14,),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: color.DarkWhite.withOpacity(0.45)
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Teen's Mood Status",style:FontSize.semiBold(16),textAlign: TextAlign.start,),
                                if(onTap!=null)IconButton(onPressed:(){}, icon:Icon(Icons.sync,size: 30,fontWeight:FontWeight.w700,color: color.fellingColor,)),
                              ],
                            ),
                            SizedBox(height:12,),
                            (circleProgress!=null)?circleProgress!
                                :Image.asset("assets/images/Home/MoodCheckIn.png"),
                            SizedBox(height:13,),
                            Text("Last updated 00 mins ago")
                          ],
                        ),
                      ),
                      SizedBox(height: 19,),
                      Text("Quick Actions",style:FontSize.semiBold(18),),
                      SizedBox(height: 19,),
                      ReuseAvater.reuseContainer("assets/images/Home/AskAI.png","Ask Ai","Get instant parenting advice",(){}),
                      SizedBox(height: 10,),
                      ReuseAvater.reuseContainer("assets/images/Home/ViewMessage.png","View Shared Messages","Review recent logs and chats",(){}),
                      SizedBox(height: 19,),
                      Container(
                        padding: EdgeInsets.all(14),
                        width:double.infinity,
                        decoration: BoxDecoration(
                            color: color.DarkWhite.withOpacity(0.45),
                            borderRadius: BorderRadius.circular(16)
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 12,),
                            Row(
                              children: [
                                Icon(Icons.bar_chart),
                                Text(" Weekly Summary",style: FontSize.semiBold(16),),
                                Spacer(),
                                Text(" Last 7 Days  ",style:TextStyle(backgroundColor: color.DarkWhite.withOpacity(0.7),color: color.fellingColor),)
                              ],
                            ),
                            SizedBox(height: 25,),
                            IndecatorPersentRow(
                              percentens: 0.78,
                              imogi: "😊",
                            ),
                            SizedBox(height: 12,),
                            IndecatorPersentRow(
                              percentens: 0.34,
                              imogi: "😌",
                            ),
                            SizedBox(height: 12,),
                            IndecatorPersentRow(
                              percentens: 0.88,
                              imogi: "😕",
                            ),
                            SizedBox(height: 12,),
                            IndecatorPersentRow(
                              percentens: 0.70,
                              imogi: "😟",
                            ),
                            SizedBox(height: 12,),
                            IndecatorPersentRow(
                              percentens: 0.78,
                              imogi: "😢",
                            ),
                            SizedBox(height: 12,),
                            IndecatorPersentRow(
                              percentens: 0.07,
                              imogi: "😠",
                            ),
                            SizedBox(height: 15,),
                          ],
                        ),
                      ),
                      SizedBox(height: 19,),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: color.PrivacyColor.withOpacity(0.45)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/Home/AskAI.png"),
                                SizedBox(width: 12,),
                                Text("AI Insight",style:FontSize.semiBold(18),),
                              ],
                            ),
                            Text("Your teen has shown increased stress patterns on tuesday evenings. Try guided conversation starter",textAlign: TextAlign.end,style:FontSize.smallText14_4(),),
                            SizedBox(height: 15,),
                            ElevatedButton(onPressed:(){},
                                style: Styleclass.elevatedButtonStyle(context,FontSize.width(context)*0.35,colors: color.OpenTool,radius:30.0 ),
                                child:Text("Open Tool")),
                            SizedBox(height: 10,),
                          ],
                        ),
                      )

                    ])))
      ],
    );
  }
}
