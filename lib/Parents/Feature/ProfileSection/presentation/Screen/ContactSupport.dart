import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/Parents/core/utils/StyleClass.dart';

import '../../../../core/utils/CustomTextField.dart';
import '../../../../core/utils/colorClass.dart';
import '../../../../core/utils/fontsizeClass.dart';

class ContractSupport extends StatelessWidget {
  const ContractSupport({super.key});

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
                                Text("Contact Us", style: FontSize.semiBold(20.0)),
                              ],
                            ),
                            const SizedBox(height:6),
                            Container(height: 2, width: double.infinity, color: color.Greay),
                            const SizedBox(height:13),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    Image.asset("assets/images/ProfileImage/icon.png"),
                                    const SizedBox(height:15),
                                    Text("Contact Us", style: FontSize.semiBold(20.0)),
                                    const SizedBox(height:15),
                                  ],
                                ),
                              ],
                            ),
                            Text("Contact Us", style: FontSize.smallTextWhite(color.Black)),
                            const SizedBox(height:5),
                            CustomTextField(
                              labelText: "Subject",
                              prefixIcon: Icon(Icons.dashboard_outlined),
                              fillColor:Colors.transparent,
                              IconColor:color.Black,
                              BorderColor:color.Black.withOpacity(0.45),
                            ),
                            const SizedBox(height:15),
                            Text("Your Message", style: FontSize.smallTextWhite(color.Black)),
                            const SizedBox(height:5),
                            CustomTextField(
                              labelText:"How can we help you?",
                              prefixIcon: Icon(Icons.chat_bubble_outline, size: 18, color: color.Black),
                              fillColor:Colors.transparent,
                              BorderColor:color.Black.withOpacity(0.45),
                              IconColor: color.Black,
                              maxLines: 5,
                            ),
                            SizedBox(height: 25,),
                            ElevatedButton(onPressed:(){},
                                style: Styleclass.elevatedButtonStyle(context,FontSize.width(context)*0.93),
                                child:Text("Submit",style: FontSize.smallTextWhite(color.DarkWhite),))


                          ]
                      )
                  )
              )
            ]
        )
    );
  }
}
