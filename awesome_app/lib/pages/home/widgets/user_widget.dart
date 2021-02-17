import 'package:awesome_app/pages/home/widgets/login_widget.dart';
import 'package:awesome_app/theme/colors.dart';
import 'package:awesome_app/theme/typography.dart';
import 'package:awesome_app/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          style: GoogleFonts.lato(textStyle: AppTextStyle.title1),
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
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 24),
                child: FlatButton(
                  child: const Text(
                    'Log in',
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () => _openLogin(),
                  padding: EdgeInsets.symmetric(vertical: 16),
                  color: AppColors.primaryColor,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 24),
                child: PrimaryButton(
                  text: 'Log in',
                  onPressed: () => _openLogin(),
                ),
              ),
              Row(
                children: <Widget>[
                  Text(
                    'Don\'t have an account?',
                    style: AppTextStyle.normalRegular,
                  ),
                  FlatButton(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    onPressed: () => _openLogin(),
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    minWidth: 0,
                    height: 0,
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                          fontSize: 15, decoration: TextDecoration.underline),
                    ),
                  )
                ],
              )
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
