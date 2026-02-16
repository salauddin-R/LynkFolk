import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/utils/CustomTextField.dart';
import '../../../../core/utils/StyleClass.dart';
import '../../../../core/utils/colorClass.dart';
import '../../../../core/utils/fontsizeClass.dart';

class Resetpassword extends StatelessWidget {
  const Resetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        height: double.infinity,
        width: double.infinity,
        decoration: color.linearGradient(topColor:color.AuthBackTop, bottomColor:color.AuthBackBottom),
        child: Center(
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth:420),
              child: Container(
                padding: EdgeInsets.all(16),
                margin:EdgeInsets.all(16) ,
                decoration:color.AuthDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset("assets/images/Authentication/authLogo.png"),
                    SizedBox(height: 24,),
                    Text(
                      "Reset Password",style: FontSize.BigText(),
                    ),
                    SizedBox(height:4,),
                    Text("Enter and confirm your new password below to reset your account access.Your new password reset your account access.Your new password must be at last 8 characters long.",textAlign: TextAlign.center,style:FontSize.smallText14_4()),
                    SizedBox(height: 24,),
                    CustomTextField(
                      labelText: "New Password",
                      isPassword: true,
                    ),
                    SizedBox(height:8,),
                    CustomTextField(
                      labelText: "Confirm Password",
                      isPassword: true,
                    ),
                    SizedBox(height:16,),
                    ElevatedButton(onPressed:(){
                      FocusScope.of(context).unfocus();
                      Get.toNamed('/LoginParent');
                    },style:Styleclass.elevatedButtonStyle(context,FontSize.width(context)*0.8),
                        child:Text("Verify",style: FontSize.smallTextWhite(color.DarkWhite),)),
                    SizedBox(height:12,),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
