import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../configurations/app_colors.dart';

class CustomProgressIndicator extends StatelessWidget {
  const CustomProgressIndicator({
    Key? key,
    required this.screenNumber,
  }) : super(key: key);
  final double screenNumber;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: LinearPercentIndicator(
        animation: true,
        lineHeight: 6,
        animationDuration: 2000,
        percent: screenNumber / 11,
        barRadius: const Radius.circular(6),
        progressColor: AppColors.kPrimaryColor,
        backgroundColor: const Color(0xffE0E0E0),
      ),
    );
  }
}
