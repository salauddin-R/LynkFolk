import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import '../../../../core/utils/StyleClass.dart';
import '../../../../core/utils/colorClass.dart';
import '../../../../core/utils/fontsizeClass.dart';

class Feelingpage extends StatelessWidget {
  const Feelingpage({super.key});

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Scaffold(
     body: Stack(
       children: [
         Container(
           width: double.infinity,
           height: double.infinity,
           decoration:BoxDecoration(
             gradient: LinearGradient(
                 begin: Alignment.topCenter,
                 end: Alignment.bottomCenter,
                 colors: [
                   color.onbordingTop,
                   color.onbordingBottom
                 ]
             ),
           ),
           child: Center(
             child: Image.asset("assets/images/onbording/Fvector.png",
               width: MediaQuery.of(context).size.width,fit: BoxFit.cover,),
           ),
         ),
         SingleChildScrollView(
           child: Column(
               children: [
                 Image.asset("assets/images/onbording/ILL_Welcome_emogi.png",
                     width: MediaQuery.of(context).size.width,fit: BoxFit.cover),
                 SizedBox(height:height*0.05,),
                 Text("Lynkfolk",style:FontSize.BigText(),),
                 Text("Home you feeling today?",style:FontSize.BigText()),
                 SizedBox(height:10,),
                 Text("You can share your honest feelings with us, we\nare no here to judge",style: FontSize.smallText14_4(),textAlign: TextAlign.center,),
                 SizedBox(height:height*0.13,),
                 Image.asset("assets/images/onbording/Frame 1171275932.png"),
                 SizedBox(height:height*0.09,),
                 ElevatedButton(onPressed:(){
                   Get.offAndToNamed('/Welcome');
                 },
                     style:Styleclass.elevatedButtonStyle(context,FontSize.width(context)*0.8),
                     child:Text("Get Started",style: FontSize.smallTextWhite(color.DarkWhite),)),
                 SizedBox(height: 20,)
               ],
             ),
         ),
       ],
     ),
    );
  }
}
