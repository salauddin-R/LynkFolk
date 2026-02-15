import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/utils/StyleClass.dart';
import '../../../../core/utils/colorClass.dart';
import '../../../../core/utils/fontsizeClass.dart';

class OtherPage extends StatelessWidget {
  const OtherPage({super.key});

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
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: FontSize.height(context) * 0.07),
            child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Row(
                      children: [
                        IconButton(onPressed:(){
                          Get.back(closeOverlays: false);
                        }, icon:Icon(Icons.arrow_back)),
                        Text("Other", style: FontSize.semiBold(20.0)),
                      ],
                    ),
                      const SizedBox(height:6),
                      Container(height: 2, width: double.infinity, color: color.Greay),
                      const SizedBox(height:13),
                      Container(
                        padding: EdgeInsets.all(15),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color:color.DarkWhite.withOpacity(0.45),
                        ),
                        child:Column(
                          children: [
                           SizedBox(height: 7,),
                            Container(
                              height: 55,
                              width: double.infinity*0.8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color:color.DarkWhite,
                              ),
                              child: Styleclass.profileListTile(
                                "Privacy Policy",null,Icon(Icons.privacy_tip_outlined),(){
                                  Get.toNamed('/PrivacyPolicy');
                              }
                              ),
                            ),
                            SizedBox(height: 7,),
                            Container(
                              height: 55,
                              width: double.infinity*0.8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color:color.DarkWhite,
                              ),
                              child: Styleclass.profileListTile(
                                  "Term & Condition",null,Icon(Icons.gavel),(){
                                    Get.toNamed('/TermsOfService');
                              }
                              ),
                            ),
                            SizedBox(height: 7,),
                            Container(
                              height: 55,
                              width: double.infinity*0.8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color:color.DarkWhite,
                              ),
                              child: Styleclass.profileListTile(
                                  "About LYNKFOLK",null,Icon(Icons.info_outline),(){
                                    Get.toNamed('/AboutLynkfolk');
                              }
                              ),
                            ),
                            SizedBox(height: 7,),
                            Container(
                              height: 55,
                              width: double.infinity*0.8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color:color.DarkWhite,
                              ),
                              child: Styleclass.profileListTile(
                                  "Delete Account",null,Icon(Icons.delete),(){

                              }
                              ),
                            ),
                            SizedBox(height: 16,),
                          ],
                        ),
                      )
              ]
                )
            )
        )
        ]
      )
    );
  }
}
