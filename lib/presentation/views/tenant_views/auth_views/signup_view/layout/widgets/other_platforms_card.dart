import 'package:flutter/material.dart';

import '../../../../../../../configurations/app_colors.dart';

class OtherPlatformsCard extends StatelessWidget {
  const OtherPlatformsCard({
    Key? key,
    required this.icon,
  }) : super(key: key);
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: AppColors.kWhiteColor,
          boxShadow: [
            BoxShadow(
                color: const Color(0xff5580C0).withOpacity(0.1),
                blurRadius: 14,
                offset: const Offset(0, 4),
                spreadRadius: 5)
          ]),
      child: Center(
        child: Image.asset(
          icon,
          height: 25,
          width: 25,
        ),
      ),
    );
  }
}
