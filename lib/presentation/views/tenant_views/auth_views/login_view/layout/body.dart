import 'package:flutter/material.dart';

import '../../../../../../configurations/app_assets.dart';
import '../../../../../../configurations/app_colors.dart';
import '../../../../../../navigation/route_names.dart';
import '../../../../../elements/auth_text_field.dart';
import '../../../../../elements/custom_button.dart';
import '../../../../../elements/tittle_rich_text.dart';
import 'widgets/other_platforms_card.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({Key? key}) : super(key: key);

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
              const TitleRichText(mediumText: 'Let’s ', boldText: 'Sign In 👇'),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Hey, Enter your details to get sign in\nto your account.',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: 30,
              ),
              AuthTextField(
                hintText: 'Email',
                isPasswordField: false,
                prefixIcon: Icons.email_outlined,
              ),
              const SizedBox(
                height: 15,
              ),
              AuthTextField(
                hintText: 'Password',
                isPasswordField: true,
                prefixIcon: Icons.lock_outline_rounded,
                obscureText: true,
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                      context, RouteNames.forgotPasswordViewRoute);
                },
                child: Text(
                  'Forgot password?',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w600,
                        color: AppColors.kPrimaryColor,
                      ),
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              CustomButton(buttonText: 'Sign In', height: 70, onPressed: () {}),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  const Expanded(child: Divider()),
                  Text(
                    ' OR ',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: const Color(0xffA1A5C1),
                        ),
                  ),
                  const Expanded(child: Divider())
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: const [
                  Expanded(
                    child: OtherPlatformsCard(
                      icon: AppAssets.kGoogleIcon,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: OtherPlatformsCard(
                      icon: AppAssets.kFacebookIcon,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 90,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account? ',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, RouteNames.signUpViewRoute);
                    },
                    child: Text('Sign Up ',
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
