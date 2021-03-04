import 'package:awesome_app/theme/typography.dart';
import 'package:awesome_app/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VerificationFormWidget extends StatefulWidget {
  @override
  _VerificationFormWidgetState createState() => _VerificationFormWidgetState();
}

class _VerificationFormWidgetState extends State<VerificationFormWidget> {
  TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Enter the code we have sent you by SMS to\n637 27 91 24',
          style: AppTextStyle.normalRegular,
          textAlign: TextAlign.left,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: TextField(
            controller: _textController,
            autofocus: true,
          ),
        ),
        Container(
          constraints: BoxConstraints(maxHeight: 20),
          child: Row(
            children: <Widget>[
              Text(
                'Haven\'t received the SMS?',
                style: AppTextStyle.normalRegular,
              ),
              LinkButton(text: 'Send again', onPressed: () => {})
            ],
          ),
        ),
      ],
    );
  }
}
