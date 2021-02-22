import 'dart:convert';

import 'package:flutter/services.dart';

class Country {
  String name;
  String dialCode;
  String isoCode;
  String flag;

  Country(this.name, this.dialCode, this.isoCode, this.flag);
}

class CountryService {
  static Future getCountriesData() async {
    String jsonString =
        await rootBundle.loadString("assets/data/countries.json");
    List data = jsonDecode(jsonString);
    List<Country> countries = [];
    data.forEach((e) {
      countries.add(Country(e['name'], e['dialCode'], e['isoCode'], e['flag']));
    });
    return countries;
  }
}
