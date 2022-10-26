import 'package:flutter/material.dart';

import '../../../../elements/custom_progress_indicator.dart';
import 'layout/body.dart';

class AddStayLocationView extends StatelessWidget {
  const AddStayLocationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomProgressIndicator(
          screenNumber: 6,
        ),
      ),
      body: const AddStayLocationViewBody(),
    );
  }
}
