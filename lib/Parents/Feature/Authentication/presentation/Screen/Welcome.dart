import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/utils/colorClass.dart';
import '../../../../core/utils/fontsizeClass.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: color.linearGradient(topColor:color.AuthBackTop, bottomColor:color.AuthBackBottom),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height:FontSize.height(context)*0.015,),
                Image.asset("assets/images/Authentication/authLogo.png"),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "Welcome to ",
                    style: FontSize.semiBold(20.0), // normal color
                  ),
                  TextSpan(
                    text: "LYNKFOLK",
                    style: FontSize.semiBold(20.0).copyWith(
                      color: color.fellingColor,
                    ),
                  ),
                ],
              ),
            ),
                SizedBox(height:12,),
                Text("Choose your role to peronalize your emotional wellness\njourney starting here.",textAlign: TextAlign.center,style: FontSize.smallText14_4(),),
                SizedBox(height:FontSize.height(context)*0.03,),
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    padding: EdgeInsets.all(16),
                    width: FontSize.width(context)*0.88,
                    decoration: color.CircleGradient(topColor: color.TeenTop, bottomColor:color.TeenBottom),
                    child: Column(
                      children: [
                        Image.asset("assets/images/Authentication/teenPic.png"),
                        SizedBox(height: 8,),
                        Text("I'm a Teen",style:FontSize.semiBold(18.0)),
                        SizedBox(height: 7,),
                        Text("Explore tools for your mood,connect safely,and grow your way with AI-guided supportive space",textAlign: TextAlign.center,)
                      ],
                    ),
                  ),
                ),
                SizedBox(height:FontSize.height(context)*0.04,),
                GestureDetector(
                  onTap: (){
                    Get.toNamed('/LoginParent');
                  },
                  child: Container(
                    padding: EdgeInsets.all(16),
                    width: FontSize.width(context)*0.88,
                    decoration: BoxDecoration(
                      color:color.DarkWhite,
                      borderRadius: BorderRadius.circular(16)
                    ),
                    child: Column(
                      children: [
                        Image.asset("assets/images/Authentication/parentPic.png"),
                        SizedBox(height: 8,),
                        Text("I'm a Parent",style:FontSize.semiBold(18.0)),
                        SizedBox(height: 7,),
                        Text("Get guidance and tools to support your your teen with understanding",textAlign: TextAlign.center,)
                      ],
                    ),
                  ),
                ),
                SizedBox(height:FontSize.height(context)*0.047,),
                Container(
                  padding: EdgeInsets.all(16),
                  width: FontSize.width(context)*0.88,
                  decoration: BoxDecoration(
                      color:color.PrivacyColor,
                      borderRadius: BorderRadius.circular(16)
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/images/Authentication/privacy.png"),
                          SizedBox(width: 5,),
                          Text("Privacy First",style:FontSize.semiBold(18.0)),
                        ],
                      ),
                      Text("Teens and parents have separate, role-appropriate experiences. AI help bridge communication with consent,never surveillance.",textAlign: TextAlign.start,)
                    ],
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
