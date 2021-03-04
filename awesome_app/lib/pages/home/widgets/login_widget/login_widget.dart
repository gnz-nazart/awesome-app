import 'package:awesome_app/pages/home/widgets/login_widget/widgets/phone_form_widget.dart';
import 'package:awesome_app/pages/home/widgets/login_widget/widgets/verification_form_widget.dart';
import 'package:awesome_app/widgets/bottom_sheet.dart';
import 'package:flutter/material.dart';

enum Step { phone, verification }

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  var _currentStep = Step.phone;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
        color: Colors.white,
      ),
      child: AppBottomSheet(
        title: _title,
        children: <Widget>[_bodyWidget],
      ),
    );
  }

  get _title {
    return _currentStep == Step.phone
        ? 'Sign in or sign up'
        : 'Confirm your phone number';
  }

  get _bodyWidget {
    return _currentStep == Step.phone
        ? PhoneFormWidget(
            onSubmit: (phone) {
              _currentStep = Step.verification;
              setState(() {});
            },
          )
        : VerificationFormWidget();
  }
}
