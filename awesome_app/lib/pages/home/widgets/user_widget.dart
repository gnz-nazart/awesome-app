import 'package:awesome_app/pages/home/widgets/login_widget.dart';
import 'package:awesome_app/theme/typography.dart';
import 'package:awesome_app/widgets/buttons.dart';
import 'package:flutter/material.dart';

class UserWidget extends StatefulWidget {
  @override
  _UserWidgetState createState() => _UserWidgetState();
}

class _UserWidgetState extends State<UserWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your profile',
          style: AppTextStyle.font(textStyle: AppTextStyle.title1),
        ),
      ),
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: <Widget>[
              Text(
                  'Log in to start enjoying the complete awesome app experience.',
                  style: AppTextStyle.normalRegular),
              Container(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: PrimaryButton(
                  text: 'Log in',
                  onPressed: () => _openLogin(),
                ),
              ),
              Container(
                constraints: BoxConstraints(maxHeight: 20),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Don\'t have an account?',
                      style: AppTextStyle.normalRegular,
                    ),
                    LinkButton(
                      text: 'Sign up',
                      onPressed: () => _openLogin(),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }

  void _openLogin() {
    showModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        builder: (BuildContext context) {
          return LoginWidget();
        });
  }
}
