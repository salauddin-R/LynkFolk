import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../core/utils/colorClass.dart';
import '../../../../core/utils/fontsizeClass.dart';
import '../widget/VideoPlayerWidget.dart';

class VideoAndImageShow extends StatefulWidget {
  final String? VideoUrl;
  const VideoAndImageShow({super.key,required this.VideoUrl});

  @override
  State<VideoAndImageShow> createState() => _VideoAndImageShowState();
}

class _VideoAndImageShowState extends State<VideoAndImageShow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [color.onbordingTop, color.onbordingBottom],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width:double.infinity,
                      height: FontSize.height(context)*0.3,
                      child:VideoPlayerPage(videoUrl:widget.VideoUrl,),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child:Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Understanding Teen Mood Swings",style: FontSize.semiBold(20,color: color.Black),),
                          Row(
                            children: [
                              Icon(Icons.watch_later,color:color.Blue,),
                              Text("12 min watch",style: FontSize.customeTextStyle(14, color.Black),),
                            ],
                          ),
                          SizedBox(height: 7,),
                          Container(
                            height:2,
                            width: double.infinity,
                            color: color.Black.withValues(alpha: 0.5),
                          ),
                          SizedBox(height: 15,),
                          Text("Mood swings are a normal part of adolescent development. During this phase, teenagers experience significant hormonal changes and brain restructuring, particularly in the prefrontal cortex, which governs emotional regulation and decision-making."),
                          SizedBox(height: 15,),
                          Container(
                           // height: 115,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color:color.DarkWhite,
                              borderRadius: BorderRadius.circular(16),
                              border: Border(
                                top: BorderSide(color:color.Green, width:1),
                                right: BorderSide(color:color.Green, width:1),
                                bottom:  BorderSide(color:color.Green, width:1),
                                left: BorderSide(color:color.Green, width:7),
                              ),
                            ),
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text("EXPERT TIP",style:FontSize.semiBold(15,color: color.fellingColor),),
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: color.fellingColor.withValues(alpha: 0.2),
                                  ),
                                ),
                                Text("\"Active listening is more effective than immediate problem-solving. When yor teen is emotional, validation is the first step toward resolution.\"",style: TextStyle(fontStyle: FontStyle.italic),)
                              ],
                            ),
                          ),
                          SizedBox(height:7,),
                          Text("In this video, Dr. Sarah Jenkins breaks down the science of why these fluctuations occur and provides three actionable strategies for parents to maintain a calm connection when tensions run high.")
                        ],
                      ),
                    )

                  ],
                ),
              ),
            ),
            Positioned(
                top: 30,
                left: 25,
                child:GestureDetector(
                  onTap: ()=>Get.back(closeOverlays: false),
                  child: CircleAvatar(
                    radius:20,
                    backgroundColor: color.DarkWhite,
                    child:Icon(Icons.arrow_back_ios,color: color.Black,size: 20,),
                  ),
                ))
          ],
        ),
    );
  }
}
