import 'package:flutter/material.dart';

class TitleRichText extends StatelessWidget {
  const TitleRichText(
      {Key? key,
      required this.mediumText,
      required this.boldText,
      this.alignment = WrapAlignment.start})
      : super(key: key);
  final String mediumText;
  final String boldText;
  final WrapAlignment alignment;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runAlignment: alignment,
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
