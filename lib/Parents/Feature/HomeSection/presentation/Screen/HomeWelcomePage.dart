import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Widget/CircularParsentIndecator.dart';
import '../Widget/HomePageWidget.dart';

class HomeWelcomePage extends StatelessWidget {
  const HomeWelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomepageWidget(
        onTap: (value){},
        circleProgress: CircularIndecatorWidget(
          percentens: 0.78,
          titleText: "Today's Mood",
          valueText: "Happy",
          icon: Icons.emoji_emotions,
        ),
      ),
    );
  }
}
