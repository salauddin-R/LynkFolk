import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../../core/utils/colorClass.dart';
import '../../../../core/utils/fontsizeClass.dart';

class CircularIndecatorWidget extends StatelessWidget {
  final double percentens;
  final String titleText;
  final String valueText;
  final IconData icon;

  const CircularIndecatorWidget({
    super.key,
    required this.percentens,
    required this.titleText,
    required this.valueText,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return CircularPercentIndicator(
      radius: 80,
      lineWidth: 19,
      percent: percentens, // IMPORTANT
      animation: true,
      animationDuration: 800,
      circularStrokeCap: CircularStrokeCap.round,
      backgroundColor: color.DarkWhite,
      progressColor: color.Green,

      // 👇 Inside Content
      center: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 30, color: color.fellingColor),
          const SizedBox(height: 4),
          Text(
            titleText,
            style: FontSize.customeTextStyle(16, color.Black),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 2),
          Text(
            valueText,
            style: FontSize.semiBold(18),
          ),
        ],
      ),
    );
  }
}
