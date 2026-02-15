import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/utils/colorClass.dart';
import '../../../../core/utils/fontsizeClass.dart';
import '../widget/ResourceInformation.dart';
import '../widget/WhenNoData.dart';
import 'ArticleDetailsPage.dart';

class ResourceLibrary extends StatelessWidget {
  const ResourceLibrary({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color.onbordingTop, color.onbordingBottom],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage("https://i.natgeofe.com/n/548467d8-c5f1-4551-9f58-6817a8d2c45e/NationalGeographic_2572187_16x9.jpg?w=1200"),
                    ),
                    Text(
                      "Resource Library",
                      style: FontSize.semiBold(20, color: color.Black),
                    ),
                    IconButton(onPressed:(){}, icon:CircleAvatar(
                      radius: 20,
                      backgroundColor: color.DarkWhite,
                      child: Icon(Icons.search,color: color.Black,size: 30,),
                    ))
                  ],
                ),
                SizedBox(height: 10,),
                TabBar(
                  dividerColor: Colors.transparent,
                  indicator: BoxDecoration(
                    border: Border.all(color: color.DarkWhite,width: 1),
                    color: color.fellingColor.withValues(alpha: 0.3),
                    borderRadius: BorderRadius.circular(16),
                  ),

                  isScrollable: true,
                  labelColor: color.Black,
                  unselectedLabelColor: color.Black,
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs:[
                    Tab(text: "  All  ",),
                    Tab(text: "  Communication  " ),
                    Tab(text: "  Articles  "),
                    Tab(text: "  Quick Tips  "),
                ]),
                Expanded(
                  child: TabBarView(children:[
                    WhenNoData(),
                    ResouceInfromation(),
                    AritcleDetailsPage(),
                    Container(color: Colors.green),
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
