import 'package:flutter/material.dart';

import 'layout/body.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const ForgotPasswordViewBody(),
    );
  }
}
