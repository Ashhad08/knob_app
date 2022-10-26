import 'package:flutter/material.dart';

import '../../../../elements/custom_progress_indicator.dart';
import 'layout/body.dart';

class SelectCountryView extends StatelessWidget {
  const SelectCountryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomProgressIndicator(
          screenNumber: 4,
        ),
      ),
      body: const SelectCountryViewBody(),
    );
  }
}
