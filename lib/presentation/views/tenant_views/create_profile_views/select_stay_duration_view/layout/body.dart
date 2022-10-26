import 'package:flutter/material.dart';

import '../../../../../../configurations/app_colors.dart';
import '../../../../../../navigation/route_names.dart';
import '../../../../../elements/custom_button.dart';
import '../../../../../elements/tittle_rich_text.dart';

class SelectStayDurationViewBody extends StatefulWidget {
  const SelectStayDurationViewBody({Key? key}) : super(key: key);

  @override
  State<SelectStayDurationViewBody> createState() =>
      _SelectStayDurationViewBodyState();
}

class _SelectStayDurationViewBodyState
    extends State<SelectStayDurationViewBody> {
  final List<String> _houseTypesList = [
    '3 months',
    '6 months',
    '12 months',
    '18 months',
    '24 months',
    'More than 24 months',
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
                        mediumText: 'How long you would ', boldText: 'stay?'),
                    const SizedBox(
                      height: 30,
                    ),
                    Expanded(
                        child: ListView.builder(
                            itemCount: _houseTypesList.length,
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
                                            _houseTypesList[index],
                                            style: Theme.of(context)
                                                .textTheme
                                                .headlineSmall!
                                                .copyWith(
                                                    color: index == selectedIndex
                                                        ? AppColors
                                                            .kPrimaryColor
                                                        : AppColors
                                                            .kSecondaryColor,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16),
                                          ),
                                        ),
                                      )),
                                ),
                              );
                            })),
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
                    context, RouteNames.addStayLocationViewRoute);
              },
            ),
          ),
        ],
      ),
    );
  }
}
