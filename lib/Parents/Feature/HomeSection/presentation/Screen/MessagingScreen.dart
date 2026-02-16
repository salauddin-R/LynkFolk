import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/utils/colorClass.dart';
import '../../../../core/utils/fontsizeClass.dart';
import '../../data/MessageData.dart';
import '../Widget/ChatBubble.dart';

class ChatScreen extends StatelessWidget {
  final String? titleHeader;
  const ChatScreen({super.key,this.titleHeader});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/ProfileImage/profileBackGround.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading:GestureDetector(
                  onTap:()=>Get.back(),
                  child: CircleAvatar(
                    radius: 10,
                      backgroundColor: color.DarkWhite,
                      child: Padding(
                        padding: const EdgeInsets.only(left:5.0),
                        child: Icon(Icons.arrow_back_ios, color: Colors.black),
                      )),
                ),
                title: Text(titleHeader!, style: TextStyle(color: Colors.black)),
                centerTitle: true,
              ),),
           
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(16),
                itemCount: dummyMessages.length,
                itemBuilder: (context, index) {
                  return ChatBubble(message: dummyMessages[index]);
                },
              ),
            ),
            Container(
              margin:EdgeInsets.all(16),
              padding: EdgeInsets.only(left: 10),
              width: double.infinity,
              height: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: color.DarkWhite.withValues(alpha: 0.1),
                border: Border.all(color: color.DarkWhite,width: 1)
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: TextFormField(
                        maxLines: 3,
                        decoration:InputDecoration(
                          border: InputBorder.none,
                          hintText:"write you mine...",
                        ),
                      )),
                      SizedBox(width: 10,),
                      Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color:color.DarkWhite
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius:15,
                              backgroundColor: color.fellingColor,
                              child:Icon(Icons.auto_awesome,color: color.DarkWhite,),

                            ),SizedBox(width: 10,),
                            Text("Refine AI",style:FontSize.customeTextStyle(14.0, color.Black),)
                          ],
                        ),
                      )
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                  child: IconButton(onPressed:(){}, icon:Icon(Icons.send,color: color.fellingColor,size: 30,)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}