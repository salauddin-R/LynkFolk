import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/Parents/core/utils/CustomTextFormField.dart';
import 'package:untitled/Parents/core/utils/fontsizeClass.dart';

import '../../../../core/utils/StyleClass.dart';
import '../../../../core/utils/colorClass.dart';
import '../GetX/LoginGetXParent.dart';

class LoginParent extends StatelessWidget {
   LoginParent({super.key});

 final Logingetxparent controller = Get.put(Logingetxparent());

  //final controller = Get.find<Logingetxparent>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
         resizeToAvoidBottomInset: true,
        body:Container(
          //height: double.infinity,
          width: double.infinity,
          decoration: color.linearGradient(
              topColor:color.AuthBackTop,
              bottomColor:color.AuthBackBottom),
          child:SafeArea(
            child: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding:EdgeInsets.only( bottom: MediaQuery.of(context).viewInsets.bottom, ),
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
                          "Login",style: FontSize.BigText(),
                        ),
                        SizedBox(height:4,),
                        Text("Enter your email and password to log in",style:FontSize.smallText14_4()),
                        SizedBox(height: 24,),
                        CustomTextFormField(
                            controller: controller.emailField,
                          labelText: "Enter your mail:",
                        ),
                        // CustomTextField(
                        //   controller: TextEditingController(),
                        //   labelText: "Enter your mail:",
                        // ),
                        SizedBox(height:6,),
                        CustomTextFormField(
                          controller:  controller.passField,
                          labelText: "password",
                          isPassword: true,
                        ),
                        SizedBox(height:8,),
                        Row(
                          children: [
                            Obx(()=>Checkbox(value:controller.checkBoxValue.value,
                      onChanged:(value){
                        controller.checkBoxValue.value=value??false;
                      })),
                            Text("Remember me"),
                            Spacer(),
                            TextButton(onPressed:(){
                              FocusScope.of(context).unfocus();
                              Get.toNamed('/ForgetPassword');
                            },
                                child:Text("Forget Password?"))
                          ],
                        ),
                        SizedBox(height:8,),
                        ElevatedButton(onPressed:(){
                          FocusScope.of(context).unfocus();
                          Get.offAllNamed('/BottomNabBarPage');
                        },
                            style:Styleclass.elevatedButtonStyle(context,FontSize.width(context)*0.8),
                            child:Text("Log In",style: FontSize.smallTextWhite(color.DarkWhite),)),
                        SizedBox(height:12,),
                        Row(
                          children: [
                            SizedBox(height: 3,width: FontSize.width(context)*0.3,child: Container(color: color.DarkWhite,),),
                            Text("Or login with"),
                            SizedBox(height: 3,width: FontSize.width(context)*0.3,child: Container(color: color.DarkWhite)),
                          ],
                        ),
                        SizedBox(height:12,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height:50,
                              width:FontSize.width(context)*0.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: color.DarkWhite,
                              ),
                              child: Image.asset("assets/images/Authentication/google.png"),

                            ),
                            SizedBox(width:FontSize.width(context)*0.1 ,),

                      Container(
                        height:50,
                        width:FontSize.width(context)*0.3,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: color.DarkWhite,
                        ),
                        child: Image.asset("assets/images/Authentication/apple.png"),

                      ),
                      ]
                        ),
                        SizedBox(height:12,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account? "),
                            TextButton(onPressed:(){
                              FocusScope.of(context).unfocus();
                              Get.toNamed('/SignupParent');
                            }, child:Text("Sign Up",style:FontSize.smallTextWhite(color.Blue),))
                          ],
                        )

                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
