import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'layout/body.dart';

class SelectUserTypeView extends StatelessWidget {
  const SelectUserTypeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return false;
      },
      child: const Scaffold(
        body: SelectUserTypeViewBody(),
      ),
    );
  }
}
