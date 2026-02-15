import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../../core/utils/colorClass.dart';
import '../../../../core/utils/fontsizeClass.dart';

class IndecatorPersentRow extends StatelessWidget {
  final String? imogi;
  final double percentens;
  const IndecatorPersentRow({super.key,this.imogi,required this.percentens});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if(imogi!=null)Text("$imogi",style: FontSize.smallText14_4(),),
        Expanded(
          child: LinearPercentIndicator(
            lineHeight:20,
            percent:percentens,
            backgroundColor: color.DarkWhite,
            progressColor: color.fellingColor,
            barRadius: Radius.circular(12),
            animation: true,
            animationDuration: 800,
          ),
        ),
        if(imogi!=null)Text("$percentens%"),
      ],
    );
  }
}
