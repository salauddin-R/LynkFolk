import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/utils/StyleClass.dart';
import '../../../../core/utils/colorClass.dart';
import '../../../../core/utils/fontsizeClass.dart';
import '../Widget/BottomSheet.dart';

class PrfilePage extends StatelessWidget {
  const PrfilePage({super.key});

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
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: FontSize.height(context) * 0.07),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Profile", style: FontSize.semiBold(20.0)),
                  const SizedBox(height: 4),
                  Text(
                    "Manage your account and preferences",
                    style: FontSize.smallText14_4(),
                  ),
                  const SizedBox(height: 16),
                  Container(height: 2, width: double.infinity, color: color.Greay),
                  const SizedBox(height: 16),
                  Container(
                    height:89,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: color.DarkWhite.withOpacity(0.45),
                      borderRadius: BorderRadius.circular(16)
                    ),
                    child:Row(
                      children: [
                        SizedBox(width: 15,),
                        CircleAvatar(
                          radius: 30.0,
                          backgroundImage:NetworkImage("https://i.natgeofe.com/n/548467d8-c5f1-4551-9f58-6817a8d2c45e/NationalGeographic_2572187_16x9.jpg?w=1200"),
                        ),
                        SizedBox(width: 15,),
                        Text("AI Jamil",style: FontSize.semiBold(22.0),)
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height:158,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: color.DarkWhite.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(16)
                    ),
                   child: Column(
                     children: [
                       SizedBox(height: 5,),
                     Styleclass.profileListTile("My Profile",
                         "Make changes to your Profile",
                         const Icon(Icons.person_outline_outlined),
                             (){}
                     ),
                       SizedBox(height: 7,),
                       Styleclass.profileListTile("Notification",
                           "Get notification, When Your teen is share",
                           const Icon(Icons.notifications_active_outlined),
                               (){}
                       ),
                     ],
                   ),
                  ),
                  SizedBox(height: 24,),
                  Text("Settings & Support",style: FontSize.semiBold(22),),
                  SizedBox(height: 24,),
                  Container(
                    height:240,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: color.DarkWhite.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(16)
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 5,),
                        Styleclass.profileListTile("Change Password",
                            "Update and secure your account password",
                            const Icon(Icons.lock),
                                (){
                         showModalBottomSheet(
                             context: context,
                             isScrollControlled: true,
                             backgroundColor:
                             color.DarkWhite.withOpacity(0.7),
                             builder:(context)=>ChangeBottomSheet()
                         );
                                }
                        ),
                        SizedBox(height: 7,),
                        Styleclass.profileListTile("Contact Us",
                            "Get help or send us a message",
                            const Icon(Icons.support_agent),
                                (){}
                        ),
                        SizedBox(height: 7,),
                        Styleclass.profileListTile("Others",
                            "App details,policies & more information",
                            const Icon(Icons.grid_view_rounded),
                                (){
                          Get.toNamed('/OtherPage');
                                }
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )

    );
  }
}
