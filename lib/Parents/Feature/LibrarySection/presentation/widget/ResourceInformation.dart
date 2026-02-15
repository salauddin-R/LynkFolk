import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/utils/colorClass.dart';
import '../../../../core/utils/fontsizeClass.dart';
import '../screen/videoAndImageShow.dart';

class ResouceInfromation extends StatelessWidget {
  const ResouceInfromation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap:()=>Get.to(VideoAndImageShow(VideoUrl: "assets/video/VideoWithSound.mp4",)),
          child: Container(
            padding: EdgeInsets.all(15),
            height: 150,
            width:double.infinity,
            decoration: BoxDecoration(
              border: Border.all(color: color.Greay,width: 1),
              borderRadius: BorderRadius.circular(16),
              color: color.DarkWhite
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 90,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 9,),
                      Text("COMMUNICATION",style:FontSize.semiBold(17,color:color.fellingColor),),
                      Text("Empathy in Dialogue",style:FontSize.semiBold(17,color:color.Black)),
                      Text("Explore methods to express empathy, fostering understanding in tough conversations.",style: FontSize.customeTextStyle(14, color.Black),)
                    ],
                  ),
                ),
                Expanded(
                  flex: 30,
                  child: Stack(
                    children: [
                      Image.network("https://i.ytimg.com/vi/AtSlcYVGOB0/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLAkH0P0ULuxibeJF15R0Yd69Td6TQ",
                        fit: BoxFit.cover,height: 150,width: 200,),
                      Center(
                        child: Icon(Icons.play_circle,color:color.DarkWhite,size: 40,),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
