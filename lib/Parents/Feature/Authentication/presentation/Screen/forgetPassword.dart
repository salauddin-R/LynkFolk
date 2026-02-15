import 'package:flutter/material.dart';

import '../../../../core/utils/CustomTextField.dart';
import '../../../../core/utils/StyleClass.dart';
import '../../../../core/utils/colorClass.dart';
import '../../../../core/utils/fontsizeClass.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

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
                      "Forgot Password",style: FontSize.BigText(),
                    ),
                    SizedBox(height:4,),
                    Text("Enter your email address to reset your password.",style:FontSize.smallText14_4()),
                    SizedBox(height: 24,),
                    CustomTextField(
                      labelText: "example@gmail.com",
                      prefixIcon: Icon(Icons.email),
                    ),
                    SizedBox(height:8,),

                    SizedBox(height:8,),
                    ElevatedButton(onPressed:(){},style:Styleclass.elevatedButtonStyle(context,FontSize.width(context)*0.8),
                        child:Text("Send Code",style: FontSize.smallTextWhite(color.DarkWhite),)),
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
