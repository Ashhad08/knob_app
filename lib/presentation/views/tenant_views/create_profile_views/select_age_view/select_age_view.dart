import 'package:flutter/material.dart';

import '../../../../elements/custom_progress_indicator.dart';
import 'layout/body.dart';

class SelectAgeView extends StatelessWidget {
  const SelectAgeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomProgressIndicator(
          screenNumber: 2,
        ),
      ),
      body: const SelectAgeViewBody(),
    );
  }
}
