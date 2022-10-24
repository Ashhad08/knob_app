import 'package:flutter/material.dart';

import '../../../../../../../configurations/app_assets.dart';

class StaggeredImages extends StatelessWidget {
  const StaggeredImages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.asset(
                AppAssets.kShowCaseImage1,
                height: 160,
              ),
              const SizedBox(
                height: 9,
              ),
              Image.asset(
                AppAssets.kShowCaseImage3,
                height: 160,
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 7,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                AppAssets.kShowCaseImage2,
                height: 111,
              ),
              const SizedBox(
                height: 9,
              ),
              Image.asset(
                AppAssets.kShowCaseImage4,
                height: 126,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
