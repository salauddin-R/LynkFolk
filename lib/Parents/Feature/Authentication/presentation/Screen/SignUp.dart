import 'package:flutter/material.dart';

import '../../../../core/utils/CustomTextField.dart';
import '../../../../core/utils/StyleClass.dart';
import '../../../../core/utils/colorClass.dart';
import '../../../../core/utils/fontsizeClass.dart';

class SignupParent extends StatelessWidget {
  const SignupParent({super.key});

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
                    SizedBox(height: 24,),
                    Text(
                      "Sign Up",style: FontSize.BigText(),
                    ),
                    SizedBox(height:4,),
                    Text("Create an account to continue!",style:FontSize.smallText14_4()),
                    SizedBox(height: 24,),
                    CustomTextField(
                      labelText: "Enter Your Full Name",
                      prefixIcon: Icon(Icons.person),
                    ),
                    SizedBox(height:6,),
                    CustomTextField(
                      labelText: "example@gmail.com",
                      prefixIcon:Icon( Icons.email),
                    ),
                    SizedBox(height:6,),
                    CustomTextField(
                      labelText: "Enter Your Date of Barth",
                      suffixIcon: Icons.calendar_month,
                    ),
                    SizedBox(height:6,),
                    CustomTextField(
                      labelText: "Password",
                      isPassword: true,
                    ),
                    SizedBox(height:6,),
                    CustomTextField(
                      labelText: "Confirm Password",
                      isPassword: true,
                    ),
                    SizedBox(height:8,),
                    SizedBox(height:8,),
                    ElevatedButton(onPressed:(){},style:Styleclass.elevatedButtonStyle(context,FontSize.width(context)*0.8),
                        child:Text("Register",style: FontSize.smallTextWhite(color.DarkWhite),)),
                    SizedBox(height:12,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already Have an account?"),
                        TextButton(onPressed:(){}, child:Text("Login",style:FontSize.smallTextWhite(color.Blue),))
                      ],
                    )

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
