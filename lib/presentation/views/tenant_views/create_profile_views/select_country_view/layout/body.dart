import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dialog.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';

import '../../../../../../navigation/route_names.dart';
import '../../../../../elements/custom_button.dart';
import '../../../../../elements/tittle_rich_text.dart';

class SelectCountryViewBody extends StatefulWidget {
  const SelectCountryViewBody({Key? key}) : super(key: key);

  @override
  State<SelectCountryViewBody> createState() => _SelectCountryViewBodyState();
}

class _SelectCountryViewBodyState extends State<SelectCountryViewBody> {
  Country _selectedCountry = Country(
    isoCode: 'PK',
    iso3Code: 'PAK',
    phoneCode: '92',
    name: 'Pakistan',
  );

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
                          mediumText: 'Which country are ',
                          boldText: 'you born?'),
                      const SizedBox(
                        height: 60,
                      ),
                      SizedBox(
                          height: 70,
                          width: double.infinity,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25)),
                            child: Center(
                              child: Directionality(
                                textDirection: TextDirection.rtl,
                                child: TextButton.icon(
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) => CountryPickerDialog(
                                        titlePadding: EdgeInsets.zero,
                                        searchInputDecoration:
                                            const InputDecoration(
                                                hintText: 'Search...',
                                                focusedBorder:
                                                    UnderlineInputBorder(),
                                                enabledBorder:
                                                    UnderlineInputBorder()),
                                        isSearchable: true,
                                        onValuePicked: (Country country) =>
                                            setState(() =>
                                                _selectedCountry = country),
                                        itemBuilder: _buildDialogItem,
                                      ),
                                    );
                                  },
                                  label: Text(
                                    _selectedCountry.name,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall!
                                        .copyWith(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16),
                                  ),
                                  icon: const Icon(Icons.keyboard_arrow_down),
                                ),
                              ),
                            ),
                          )),
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
                Navigator.pushNamed(
                    context, RouteNames.selectStayDurationViewRoute);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDialogItem(Country country) => Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          const SizedBox(width: 20),
          Text(country.isoCode),
          const SizedBox(width: 20),
          Flexible(child: Text(country.name))
        ],
      );
}
