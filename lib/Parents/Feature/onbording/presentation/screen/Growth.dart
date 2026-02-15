import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/onbordingWidget.dart';

class Growth extends StatelessWidget {
  const Growth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Onbordingwidget(headline:"Growth",body: "A calm space for honest feelings.",route: '/Feelingpage',),
    );
  }
}
