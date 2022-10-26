import 'package:flutter/material.dart';

import '../../../../../../navigation/route_names.dart';
import '../../../../../elements/auth_text_field.dart';
import '../../../../../elements/custom_button.dart';
import '../../../../../elements/tittle_rich_text.dart';

class NameViewBody extends StatelessWidget {
  const NameViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const TitleRichText(
                          mediumText: 'What is your ', boldText: 'Name?'),
                      const SizedBox(
                        height: 60,
                      ),
                      AuthTextField(hintText: 'Name', isPasswordField: false),
                    ]),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            right: 24,
            left: 24,
            child: CustomButton(
              buttonText: 'Next',
              height: 70,
              onPressed: () {
                Navigator.pushNamed(context, RouteNames.selectAgeViewRoute);
              },
            ),
          ),
        ],
      ),
    );
  }
}
