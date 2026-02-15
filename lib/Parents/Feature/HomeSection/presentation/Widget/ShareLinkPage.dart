import 'package:flutter/material.dart';
import 'package:untitled/Parents/core/utils/CustomTextField.dart';
import 'package:untitled/Parents/core/utils/StyleClass.dart';

import '../../../../core/utils/colorClass.dart';
import '../../../../core/utils/fontsizeClass.dart';

class ShareLinkPage extends StatelessWidget {
  const ShareLinkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      height: FontSize.height(context)*0.87,
      decoration: BoxDecoration(
        gradient:LinearGradient(
            begin:Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors:[
              color.DarkWhite,
              color.onbordingBottom
            ]),
        borderRadius: BorderRadius.circular(16)
      ),
      child:Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/Home/mother_soon.png"),
              SizedBox(height: 15,),
              Text("Invite Leo to this talk's",style:FontSize.semiBold(20)),
              Text("Review your invitation before sending.",style:FontSize.customeTextStyle(16.0, color.Greay)),
              SizedBox(height:25,),
                  Row(
                    children: [
                      Icon(Icons.person_search,color: color.Black.withValues(alpha: 0.45),),
                      Text("Find Your Teen",style:FontSize.customeTextStyle(16.0, color.Black),textAlign: TextAlign.start,),
                    ],
                  ),
              SizedBox(height: 8,),
              CustomTextField(labelText:"Search Teen's by user or email",prefixIcon: Icon(Icons.person_outline),BorderColor: color.Black.withValues(alpha: 0.35),),
              SizedBox(height:25,),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text("Invitation Message",style: FontSize.semiBold(20),)),
              SizedBox(height: 5,),
              TextFormField(
                maxLines: 2,
                decoration: InputDecoration(
                 hintText: "Hi! I'd love to chat about \"Resilience & Reflection \" with you on LYNKFOLK. Whenever you're ready! ",
                    border: OutlineInputBorder(
                    borderSide: BorderSide(color: color.Greay,width: 1),
                      borderRadius: BorderRadius.circular(16),
                  ),
                  enabledBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(color: color.Greay,width: 1)),
                  focusedBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(color: color.Greay,width: 1)),
                ),
              ),
              SizedBox(height: 15,),
              ElevatedButton(onPressed:(){},
                  style:Styleclass.elevatedButtonStyle(context,double.infinity,colors: color.fellingColor,radius: 30,height: 48) ,
                  child: Text("Send invite via app",style: FontSize.semiBold(16.0,color: color.DarkWhite),)),
              SizedBox(height: 25,),
              ElevatedButton(onPressed:(){},
                  style:Styleclass.elevatedButtonStyle(context,double.infinity,colors: color.DarkWhite,radius: 30,height: 48) ,
                  child: Text("Share Link",style: FontSize.semiBold(16.0,color: color.Black),)),
              SizedBox(height: 30,),
              Text("Your teen can choose to join when they feel comfortable.",textAlign: TextAlign.center,style:FontSize.customeTextStyle(14.0, color.Greay)),
              //SizedBox(height: 10,),
              TextButton(onPressed:(){}, child:Column(
                children: [
                  Text("Maybe later",style: TextStyle(color: color.Black,fontSize: 15),),
                  Container(
                    height: 1,
                    width: 80,
                    color: color.Black,
                  )
                ],
              )),


            ],
          ),
        ),
      ),
    );
  }
}
