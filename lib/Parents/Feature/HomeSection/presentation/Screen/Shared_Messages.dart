import 'package:flutter/material.dart';

import '../../../../core/utils/StyleClass.dart';
import '../../../../core/utils/colorClass.dart';
import '../../../../core/utils/fontsizeClass.dart';
import '../Widget/SharedMassagedContainerListTille.dart';
import '../Widget/reuseAvat.dart';

class SharedMessages extends StatelessWidget {
  const SharedMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/ProfileImage/profileBackGround.png",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Container(
              color: Colors.transparent,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: FontSize.height(context) * 0.07),
              child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(

                        children: [
                          GestureDetector(
                            child: CircleAvatar(
                              radius: 25,
                              child: Icon(Icons.arrow_back_ios,color:color.Black,),
                            ),
                            onTap: (){},
                          ),
                          SizedBox(width: 25,),
                          Text("Shared Messages",style: FontSize.semiBold(20),)
                        ],
                      ),
                      SizedBox(height: 25,),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text("Today",style:FontSize.semiBold(16),),
                      ),
                      SharedMassagedContainerListTile(
                        imogi: "😊",title: "I Had a ggod day today",subtitle: "Shared by Leo",time: "2:30 PM",
                      )
                    ],
                  )
              ))
        ],
      ),
    );
  }
}
