import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Widget/HomePageWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: HomepageWidget(
      MoodCheck: ()=>Get.toNamed('/CheckInPage'),
    ),
    );
  }
}
