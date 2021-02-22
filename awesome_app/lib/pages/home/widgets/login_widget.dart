import 'package:awesome_app/theme/typography.dart';
import 'package:awesome_app/widgets/bottom_sheet.dart';
import 'package:awesome_app/widgets/buttons.dart';
import 'package:awesome_app/widgets/country_sheet.dart';
import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
        color: Colors.white,
      ),
      child: AppBottomSheet(
        title: 'Sign in or sign up',
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              labelText: 'Phone number',
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            'We will call or send you an SMS to confirm your number. Standard message and data rates apply.',
            style: AppTextStyle.superSmallRegular,
          ),
          SizedBox(height: 24.0),
          PrimaryButton(
            text: 'Continue',
            onPressed: () => _openPrefixSelector(),
          ),
        ],
      ),
    );
  }

  void _openPrefixSelector() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return FractionallySizedBox(
          heightFactor: 0.9,
          child: CountrySelector(),
        );
      },
    );
  }
}
