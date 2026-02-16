import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/utils/CustomTextField.dart';
import '../../../../core/utils/StyleClass.dart';
import '../../../../core/utils/colorClass.dart';
import '../../../../core/utils/fontsizeClass.dart';

class ChangeBottomSheet extends StatelessWidget {
  const ChangeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
        decoration:BoxDecoration(
          borderRadius: BorderRadius.only(topLeft:Radius.circular(16),topRight:Radius.circular(16)),
        ),
     height: FontSize.height(context)*0.43,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 15,),
              Text("Password Change",style: FontSize.semiBold(20.0),),
              SizedBox(height: 15,),
              CustomTextField(
                prefixIcon:Icon(Icons.key),
                labelText: "New Password",
                isPassword: true,
              ),
              SizedBox(height:5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed:(){
                    Get.toNamed('/ForgetPassword');
                  }, child:Text("Forgot Password?",style: FontSize.smallTextWhite(color.fellingColor)),)
                ],
              ),
              SizedBox(height:15,),
              CustomTextField(
                prefixIcon:Icon(Icons.key),
                labelText: "Enter New Password",
                isPassword: true,
              ),
              SizedBox(height:15,),
              CustomTextField(
                prefixIcon:Icon(Icons.key),
                labelText: "Confirm New Password",
                isPassword: true,
              ),
              SizedBox(height:15,),
              ElevatedButton(onPressed:(){}, 
                  style: Styleclass.elevatedButtonStyle(context,FontSize.width(context)*0.99),
                  child:Text("Save Change",style: FontSize.smallTextWhite(color.DarkWhite),)),
              SizedBox(height:20,),
            ],
          ),
        ),
      ),
    );
  }
}
