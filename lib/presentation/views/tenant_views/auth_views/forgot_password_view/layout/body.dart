import 'package:flutter/material.dart';

import '../../../../../../configurations/app_colors.dart';
import '../../../../../../navigation/route_names.dart';
import '../../../../../elements/auth_text_field.dart';
import '../../../../../elements/custom_button.dart';
import '../../../../../elements/tittle_rich_text.dart';

class ForgotPasswordViewBody extends StatelessWidget {
  const ForgotPasswordViewBody({Key? key}) : super(key: key);

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
              const TitleRichText(
                  mediumText: 'Forgot your ', boldText: 'password?'),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Please, enter your email address. You will receive a link to create a new password via email.',
                style: Theme.of(context).textTheme.bodySmall,
                maxLines: 3,
              ),
              const SizedBox(
                height: 20,
              ),
              AuthTextField(
                hintText: 'Email',
                isPasswordField: false,
                prefixIcon: Icons.email_outlined,
              ),
              const SizedBox(
                height: 40,
              ),
              CustomButton(
                  buttonText: 'Send',
                  height: 70,
                  onPressed: () {
                    Navigator.pushNamed(
                        context, RouteNames.resetPasswordViewRoute);
                  }),
              const SizedBox(
                height: 300,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account? ',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text('Login',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: AppColors.kPrimaryColor,
                            fontWeight: FontWeight.w700)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
