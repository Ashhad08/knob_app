import 'package:flutter/material.dart';

import '../../../../../elements/auth_text_field.dart';
import '../../../../../elements/custom_button.dart';
import '../../../../../elements/tittle_rich_text.dart';

class ResetPasswordViewBody extends StatelessWidget {
  const ResetPasswordViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TitleRichText(mediumText: 'Reset ', boldText: 'Password'),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Enter your new password to reset it!!',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: 45,
              ),
              AuthTextField(
                hintText: 'New Password',
                isPasswordField: true,
                prefixIcon: Icons.lock_outline_rounded,
                obscureText: true,
              ),
              const SizedBox(
                height: 13,
              ),
              AuthTextField(
                hintText: 'Confirm Password',
                isPasswordField: true,
                prefixIcon: Icons.lock_outline_rounded,
                obscureText: true,
              ),
              const SizedBox(
                height: 37,
              ),
              CustomButton(
                  buttonText: 'Reset Password', height: 70, onPressed: () {}),
              const SizedBox(
                height: 200,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Center(
                  child: Text(
                    'Back to Forgot password?',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
