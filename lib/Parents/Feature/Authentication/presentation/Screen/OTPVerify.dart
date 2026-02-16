import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../core/utils/StyleClass.dart';
import '../../../../core/utils/colorClass.dart';
import '../../../../core/utils/fontsizeClass.dart';

class OtpVerify extends StatelessWidget {
  const OtpVerify({super.key});

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
                      "Enter verification code",style: FontSize.BigText(),
                    ),
                    SizedBox(height:4,),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "We've sent a verification code to example@gmail.com that will expire in",
                            style: FontSize.smallText14_4(), // normal color
                          ),
                          TextSpan(
                            text: " 5 minutes. ",
                            style: FontSize.smallText14_4().copyWith(
                              color: color.fellingColor,
                            ),
                          ),
                          TextSpan(
                            text: "Please enter the code to continue.",
                            style: FontSize.smallText14_4(), // normal color
                          )
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 24,),
                    PinCodeTextField(appContext: context, length:6,cursorHeight: 19,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      activeColor: color.Blue,
                      selectedColor: color.DarkWhite,
                      inactiveColor: Colors.grey,
                      fieldOuterPadding: EdgeInsets.all(8.5),
                      fieldWidth: 40,
                      borderRadius: BorderRadius.circular(8)
                    ),
                      onChanged: (value){},
                    ),
                    SizedBox(height:16,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text("Didn't receive the code?",),
                        TextButton(onPressed:(){}, child:Column(
                          children: [
                            Text("ResendCode",style: FontSize.smallTextWhite(color.Red),),
                            Container(
                              height: 2,
                              width: 80,
                              color: color.Red,
                            )
                          ],
                        ))
                        
                      ],
                    ),
                    SizedBox(height:16,),
                    ElevatedButton(onPressed:(){
                      FocusScope.of(context).unfocus();
                      Get.toNamed('/Resetpassword');
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
