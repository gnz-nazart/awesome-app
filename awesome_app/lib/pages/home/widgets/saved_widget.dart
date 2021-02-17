import 'package:awesome_app/theme/typography.dart';
import 'package:flutter/material.dart';

class SavedWidget extends StatefulWidget {
  @override
  _SavedWidgetState createState() => _SavedWidgetState();
}

class _SavedWidgetState extends State<SavedWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Saved',
          style: AppTextStyle.font(textStyle: AppTextStyle.title1),
        ),
      ),
      body: Center(),
    );
  }
}
