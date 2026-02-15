import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/utils/StyleClass.dart';
import '../../../../core/utils/colorClass.dart';
import '../../../../core/utils/fontsizeClass.dart';
import '../GetX/BreatingGetX.dart';
import '../Widget/InhaleWidget.dart';
import '../Widget/inhaleBottomSheet.dart';

class BreathingPage extends StatelessWidget {
   BreathingPage({super.key});
  BreatingGetx getBreath=Get.put(BreatingGetx());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset("assets/images/ToolImage/Breathing (1).png",fit:BoxFit.cover,),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 48,right: 20,left: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      IconButton(onPressed:(){
                        Get.back(closeOverlays: false);
                      }, icon:Icon(Icons.close,color: color.Black,)),
                        Container(
                          width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: color.OpenTool.withValues(alpha: 0.9)
                            ),
                            child: Center(child:
                            Obx(()=>Text(
                              "00:${getBreath.seconds.value}",
                              style: FontSize.customeTextStyle(18.0, color.Black),))),
                            ),
                        IconButton(onPressed:(){
                          showModalBottomSheet(context: context, builder:(context)=>InhaleBottomSheet());
                        }, icon:Icon(Icons.info,color: color.Black,))

                      ],
                    ),
                    SizedBox(height: 15,),
                    Text("Breathe with the ballon",style:FontSize.semiBold(27.0,color:color.Black ) ),
                    Text("Focus on your center",style:FontSize.customeTextStyle(16,color.Black)),
                    SizedBox(height:FontSize.height(context)*0.167,),
                    Obx(()=>Inhalewidget(isStart:getBreath.isVisible.value)),
                    SizedBox(height:FontSize.height(context)*0.267,),
                    // Container(
                    //   height: 45,
                    //   width: FontSize.width(context)*0.7,
                    //   decoration: BoxDecoration(
                    //     color: color.WithColor.withValues(alpha: 0.5),
                    //     borderRadius: BorderRadius.circular(30)
                    //   ),
                    //   child: Center(
                    //     child: Text("30",style:FontSize.customeTextStyle(18, color.Black),),
                    //   ),
                    // ),
                    //SizedBox(height: 20,),
                    ElevatedButton(onPressed:(){
                      getBreath.startBreathing();
                    },
                        style:Styleclass.elevatedButtonStyle(context,FontSize.width(context)*0.7,radius:30),
                        child:Text("Start Session",

                      style: FontSize.semiBold(16.0, color:color.DarkWhite),))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
