import 'dart:convert';

import 'package:awesome_app/theme/typography.dart';
import 'package:awesome_app/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VerificationFormWidget extends StatefulWidget {
  final String phoneNumber;
  final Function(String) onSuccess;

  VerificationFormWidget({
    @required this.phoneNumber,
    @required this.onSuccess,
  });

  @override
  _VerificationFormWidgetState createState() => _VerificationFormWidgetState();
}

class _VerificationFormWidgetState extends State<VerificationFormWidget> {
  TextEditingController _textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _textController.addListener(_verify);
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Enter the code we have sent you by SMS to\n${widget.phoneNumber}',
          style: AppTextStyle.normalRegular,
          textAlign: TextAlign.left,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: TextField(
            decoration: InputDecoration(counterText: ''),
            controller: _textController,
            autofocus: true,
            keyboardType: TextInputType.number,
            maxLength: 4,
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

  _verify() {
    if (_textController.text.length == 4) {
      widget.onSuccess(json.encode({
        'name': 'Gonz',
        'uid': 'vaina',
      }));
    }
  }
}
