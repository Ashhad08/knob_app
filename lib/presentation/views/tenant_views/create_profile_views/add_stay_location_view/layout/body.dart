import 'package:flutter/material.dart';

import '../../../../../elements/auth_text_field.dart';
import '../../../../../elements/custom_button.dart';
import '../../../../../elements/tittle_rich_text.dart';

class AddStayLocationViewBody extends StatelessWidget {
  const AddStayLocationViewBody({Key? key}) : super(key: key);

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
                          mediumText:
                              'Where do you want to be staying in the next ',
                          boldText: 'above 6 months'),
                      //this 6 months come from previous screen
                      const SizedBox(
                        height: 60,
                      ),
                      AuthTextField(
                          hintText: 'Enter your location',
                          isPasswordField: false),
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
                // Navigator.pushNamed(context, RouteNames.selectAgeViewRoute);
              },
            ),
          ),
        ],
      ),
    );
  }
}
