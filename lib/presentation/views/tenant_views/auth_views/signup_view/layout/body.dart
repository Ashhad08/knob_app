import 'package:flutter/material.dart';
import 'package:knob_app/navigation/route_names.dart';

import '../../../../../../configurations/app_assets.dart';
import '../../../../../../configurations/app_colors.dart';
import '../../../../../elements/auth_text_field.dart';
import '../../../../../elements/custom_button.dart';
import '../../../../../elements/tittle_rich_text.dart';
import 'widgets/other_platforms_card.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({Key? key}) : super(key: key);

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
                  mediumText: 'Let’s ', boldText: 'Sign Up 👇 '),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Create a new account',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: 40,
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
              AuthTextField(
                hintText: 'Confirm Password',
                isPasswordField: true,
                prefixIcon: Icons.lock_outline_rounded,
                obscureText: true,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                  buttonText: 'Sign Up',
                  height: 70,
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.nameViewRoute);
                  }),
              const SizedBox(
                height: 40,
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
                height: 40,
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
