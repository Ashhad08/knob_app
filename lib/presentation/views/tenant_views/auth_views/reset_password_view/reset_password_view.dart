import 'package:flutter/material.dart';

import 'layout/body.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const ResetPasswordViewBody(),
    );
  }
}
