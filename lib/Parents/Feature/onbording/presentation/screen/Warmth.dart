import 'package:flutter/material.dart';
import '../widget/onbordingWidget.dart';

class Warmth extends StatelessWidget {
  const Warmth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Onbordingwidget(headline:"Warmth",body: "Warm, simple support for your emotional day.",route:'/growth',),
    );
  }
}
