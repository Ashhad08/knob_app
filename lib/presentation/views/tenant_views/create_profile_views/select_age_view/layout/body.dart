import 'package:flutter/material.dart';

import '../../../../../../configurations/app_colors.dart';
import '../../../../../../navigation/route_names.dart';
import '../../../../../elements/custom_button.dart';
import '../../../../../elements/tittle_rich_text.dart';

class SelectAgeViewBody extends StatefulWidget {
  const SelectAgeViewBody({Key? key}) : super(key: key);

  @override
  State<SelectAgeViewBody> createState() => _SelectAgeViewBodyState();
}

class _SelectAgeViewBodyState extends State<SelectAgeViewBody> {
  final List<String> _ageList = [
    '18-25',
    '26-40',
    '41-60',
    '60+',
  ];
  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const TitleRichText(
                        mediumText: 'What is your ', boldText: 'age group?'),
                    const SizedBox(
                      height: 30,
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemCount: _ageList.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedIndex = index;
                                  });
                                },
                                child: SizedBox(
                                    height: 70,
                                    width: double.infinity,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                              color: index == selectedIndex
                                                  ? AppColors.kPrimaryColor
                                                  : Colors.transparent),
                                          borderRadius:
                                              BorderRadius.circular(25)),
                                      child: Center(
                                        child: Text(
                                          _ageList[index],
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineSmall!
                                              .copyWith(
                                                  color: index == selectedIndex
                                                      ? AppColors.kPrimaryColor
                                                      : AppColors
                                                          .kSecondaryColor,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16),
                                        ),
                                      ),
                                    )),
                              ),
                            );
                          }),
                    ),
                  ]),
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
                Navigator.pushNamed(
                    context, RouteNames.selectHouseTypeViewRoute);
              },
            ),
          ),
        ],
      ),
    );
  }
}
