import 'dart:math';

import 'package:awesome_app/services/country_service.dart';
import 'package:awesome_app/theme/colors.dart';
import 'package:awesome_app/theme/typography.dart';
import 'package:awesome_app/widgets/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class CountrySelector extends StatefulWidget {
  @override
  _CountrySelectorState createState() => _CountrySelectorState();
}

class _CountrySelectorState extends State<CountrySelector> {
  final ItemScrollController _scrollController = ItemScrollController();
  final ItemPositionsListener _positionsListener =
      ItemPositionsListener.create();

  String _selectedCountryIsoCode = 'ES'; // Heredar y devolver este valor
  List<Country> _countries = [];

  @override
  void initState() {
    super.initState();
  }

  int get _selectedItemIndex {
    for (var i = 0; i < _countries.length; i++) {
      if (_countries[i].isoCode.toLowerCase() ==
          _selectedCountryIsoCode.toLowerCase()) {
        return i;
      }
    }
    return -1;
  }

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
    var builder = FutureBuilder(
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return SizedBox();
        }
        var list = ScrollablePositionedList.builder(
          itemScrollController: _scrollController,
          itemPositionsListener: _positionsListener,
          itemCount: snapshot.data.length,
          initialScrollIndex: max(_selectedItemIndex - 4, 0),
          itemBuilder: (context, index) {
            final Country country = snapshot.data[index];
            final name = country.name;
            final prefix = country.dialCode;
            return ListTile(
              title: Text(
                '$name ($prefix)',
                style: AppTextStyle.normalRegular,
              ),
              trailing: country.isoCode == _selectedCountryIsoCode
                  ? Icon(Icons.check, color: AppColors.grey[800])
                  : null,
              onTap: () => {
                setState(() {
                  Navigator.of(context, rootNavigator: true).pop(country);
                })
              },
            );
          },
        );
        return list;
      },
      future: _loadData(),
    );
    return builder;
  }

  Future _loadData() async {
    if (_countries.isEmpty)
      _countries = await CountryService.getCountriesData();
    return _countries;
  }
}
