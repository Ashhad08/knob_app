import 'package:flutter/material.dart';

class TitleRichText extends StatelessWidget {
  const TitleRichText(
      {Key? key,
      required this.mediumText,
      required this.boldText,
      this.alignment = MainAxisAlignment.start})
      : super(key: key);
  final String mediumText;
  final String boldText;
  final MainAxisAlignment alignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: alignment,
      children: [
        Text(mediumText, style: Theme.of(context).textTheme.headlineSmall),
        Text(boldText,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(fontWeight: FontWeight.w700)),
      ],
    );
  }
}
