import 'package:awesome_app/theme/colors.dart';
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
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 56.0,
            ),
            child: TextField(
              autofocus: true,
              decoration: InputDecoration(
                prefix: Padding(
                  padding: EdgeInsets.only(right: 24),
                  child: RawMaterialButton(
                    constraints:
                        const BoxConstraints(maxWidth: 94.0, maxHeight: 32),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(3.0),
                          clipBehavior: Clip.hardEdge,
                          child: Image.network(
                            'https://flagcdn.com/w40/es.png',
                            width: 24,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 4, 0),
                          child: Text('+34',
                              style: AppTextStyle.normalRegular,
                              textAlign: TextAlign.right),
                        ),
                        Icon(Icons.arrow_drop_down,
                            color: AppColors.grey[700], size: 24)
                      ],
                    ),
                    onPressed: () => _openPrefixSelector(),
                  ),
                ),
                labelText: 'Phone number',
              ),
              keyboardType: TextInputType.phone,
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
            onPressed: null,
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
          heightFactor: 0.95,
          child: CountrySelector(),
        );
      },
    );
  }
}
