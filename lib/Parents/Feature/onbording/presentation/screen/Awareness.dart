import 'package:flutter/material.dart';
import '../widget/onbordingWidget.dart';

class Awareness extends StatelessWidget {
  const Awareness({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Onbordingwidget(headline:"Awareness",body: "A soft way to stay connected to yourself",route: '/Warmth',),
    );
  }
}
