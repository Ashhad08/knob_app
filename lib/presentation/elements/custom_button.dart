import 'package:flutter/material.dart';
import 'package:knob_app/configurations/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.buttonText,
    required this.height,
    this.width = double.infinity,
    required this.onPressed,
    this.backGroundColor = AppColors.kPrimaryColor,
  }) : super(key: key);
  final String buttonText;
  final double height;
  final double width;
  final VoidCallback onPressed;
  final Color backGroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: backGroundColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25))),
          onPressed: onPressed,
          child: Text(
            buttonText,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color: AppColors.kWhiteColor),
          )),
    );
  }
}
