import 'package:flutter/material.dart';
import 'package:knob_app/presentation/elements/tittle_rich_text.dart';

import '../../../../../../configurations/app_assets.dart';
import '../../../../../../configurations/app_colors.dart';
import '../../../../../../navigation/route_names.dart';
import '../../../../../elements/custom_button.dart';
import 'widgets/staggered_images.dart';

class SelectUserTypeViewBody extends StatefulWidget {
  const SelectUserTypeViewBody({Key? key}) : super(key: key);

  @override
  State<SelectUserTypeViewBody> createState() => _SelectUserTypeViewBodyState();
}

class _SelectUserTypeViewBodyState extends State<SelectUserTypeViewBody> {
  String usertype = 'Tenant';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            const StaggeredImages(),
            const SizedBox(
              height: 24,
            ),
            const TitleRichText(
              alignment: WrapAlignment.center,
              mediumText: 'Ready to ',
              boldText: 'explore? 👋',
            ),
            const SizedBox(
              height: 5,
            ),
            Text('Choose User Type',
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: AppColors.kPrimaryColor)),
            const SizedBox(
              height: 35,
            ),
            Row(
              children: [
                Expanded(
                  child: _buildUserTypeCard(
                      context, AppAssets.kTenantIcon, 'Tenant'),
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: _buildUserTypeCard(
                      context, AppAssets.kLandLordIcon, 'Landlord'),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            CustomButton(
                buttonText: 'Continue',
                height: 70,
                onPressed: () {
                  if (usertype == 'Tenant') {
                    Navigator.pushNamed(context, RouteNames.loginViewRoute);
                  }
                })
          ],
        ),
      ),
    );
  }

  Widget _buildUserTypeCard(BuildContext context, String image, String user) {
    return GestureDetector(
      onTap: () {
        setState(() {
          usertype = user;
        });
      },
      child: SizedBox(
        height: 115,
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
              side: BorderSide(
                  color: usertype == user
                      ? AppColors.kPrimaryColor
                      : Colors.transparent)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                image,
                height: 41,
                width: 41,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                user,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontWeight: FontWeight.w600, fontSize: 12),
              )
            ],
          ),
        ),
      ),
    );
  }
}
