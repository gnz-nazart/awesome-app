import 'package:awesome_app/theme/colors.dart';
import 'package:awesome_app/theme/typography.dart';
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 48,
                height: 4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: AppColors.grey[400],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CloseButton(
                color: AppColors.grey[500],
              ),
              Text('Sign in or sign up', style: AppTextStyle.title4),
              SizedBox(width: 48.0)
            ],
          ),
          SizedBox(height: 16.0),
          TextField(
            autofocus: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              prefix: null,
              labelText: 'Phone number',
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            'We will call or send you an SMS to confirm your number. Standard message and data rates apply.',
            style: AppTextStyle.superSmallRegular,
          ),
          SizedBox(height: 24.0),
          FlatButton(
            minWidth: double.infinity,
            child: const Text(
              'Continue',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            onPressed: () => {},
            padding: EdgeInsets.symmetric(vertical: 16),
            color: AppColors.primaryColor,
            textColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ],
      ),
    );
  }
}
