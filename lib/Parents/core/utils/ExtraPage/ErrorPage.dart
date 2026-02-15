import 'package:flutter/material.dart';

import '../StyleClass.dart';
import '../colorClass.dart';
import '../fontsizeClass.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: color.linearGradient(
            topColor:color.WithColor,
            bottomColor:color.Glass),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/Utils/errorPage.png"),
            SizedBox(height: 18,),
            ElevatedButton(onPressed:(){},
                style: Styleclass.elevatedButtonStyle(context,FontSize.width(context)*0.9),
                child:Text("Re-load",style: FontSize.smallTextWhite(color.WithColor),))
          ],
        ),
      ),
    );
  }
}
