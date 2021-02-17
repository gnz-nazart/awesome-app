import 'package:awesome_app/theme/colors.dart';
import 'package:flutter/material.dart';

class AppButton extends FlatButton {
  AppButton({
    @required String text,
    Color textColor,
    TextStyle textStyle,
    @required Function onPressed,
    Color color,
    EdgeInsetsGeometry padding,
  }) : super(
            child: Text(text,
                style: textStyle != null
                    ? textStyle
                    : TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
            textColor: textColor,
            color: color,
            onPressed: onPressed,
            padding:
                padding != null ? padding : EdgeInsets.symmetric(vertical: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ));
}

class PrimaryButton extends AppButton {
  PrimaryButton({
    @required String text,
    TextStyle textStyle,
    @required Function onPressed,
    EdgeInsetsGeometry padding,
  }) : super(
            text: text,
            textStyle: textStyle,
            color: AppColors.primaryColor,
            textColor: Colors.white,
            onPressed: onPressed,
            padding: padding);
}
