import 'package:awesome_app/pages/home/widgets/login_widget/widgets/phone_form_widget.dart';
import 'package:awesome_app/pages/home/widgets/login_widget/widgets/verification_form_widget.dart';
import 'package:awesome_app/widgets/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

enum Step { phone, verification, success }

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  Step _currentStep = Step.phone;
  String _phoneNumber = '';
  String _userData;

  get _heightFactor {
    return _currentStep == Step.success ? 0.4 : 0.8;
  }

  get _title {
    switch (_currentStep) {
      case Step.verification:
        return 'Confirm your phone number';
      case Step.success:
        return '';
      default:
        return 'Sign in or sign up';
    }
  }

  get _bodyWidget {
    switch (_currentStep) {
      case Step.verification:
        return buildVerificationStepWidget();
      case Step.success:
        return buildSuccessStepWidget();
      default:
        return buildPhoneStepWidget();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppBottomSheet(
        title: _title,
        children: <Widget>[_bodyWidget],
        heightFactor: _heightFactor,
        showCloseButton: _currentStep != Step.success);
  }

  Widget buildPhoneStepWidget() {
    return PhoneFormWidget(
      onSubmit: (phone) {
        setState(() {
          _currentStep = Step.verification;
          _phoneNumber = phone;
        });
      },
    );
  }

  Widget buildVerificationStepWidget() {
    return VerificationFormWidget(
      phoneNumber: _phoneNumber,
      onSuccess: (userData) {
        setState(() {
          _currentStep = Step.success;
          _userData = userData;
        });
      },
    );
  }

  Widget buildSuccessStepWidget() {
    return Center(
      heightFactor: 2,
      child: SvgPicture.asset(
        'assets/images/icons/checked.svg',
        height: 64,
      ),
    );
  }
}
