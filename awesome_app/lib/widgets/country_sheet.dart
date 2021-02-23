import 'package:awesome_app/services/country_service.dart';
import 'package:awesome_app/theme/colors.dart';
import 'package:awesome_app/theme/typography.dart';
import 'package:awesome_app/widgets/bottom_sheet.dart';
import 'package:flutter/material.dart';

class CountrySelector extends StatefulWidget {
  @override
  _CountrySelectorState createState() => _CountrySelectorState();
}

class _CountrySelectorState extends State<CountrySelector> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
        color: Colors.white,
      ),
      child: AppBottomSheet(
        title: 'Select your phone prefix',
        children: <Widget>[
          Expanded(
            child: buildCountriesList(),
          ),
        ],
      ),
    );
  }

  Widget buildCountriesList() {
    return FutureBuilder(
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return SizedBox();
        }
        return ListView.builder(
          itemCount: snapshot.data.length,
          itemBuilder: (context, index) {
            Country country = snapshot.data[index];
            final name = country.name;
            final prefix = country.dialCode;
            return ListTile(
                title: Text(
                  '$name ($prefix)',
                  style: AppTextStyle.normalRegular,
                ),
                trailing: country.isoCode == 'ES'
                    ? Icon(Icons.check, color: AppColors.grey[800])
                    : null);
          },
        );
      },
      future: CountryService.getCountriesData(),
    );
  }
}
