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
    double height,
    double minWidth,
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
            ),
            height: height,
            minWidth: minWidth);
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
            padding: padding,
            minWidth: double.infinity);
}

class LinkButton extends AppButton {
  LinkButton({
    @required String text,
    TextStyle textStyle,
    @required Function onPressed,
  }) : super(
            text: text,
            textStyle: TextStyle(
                fontSize: 15,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold),
            color: Colors.white,
            textColor: AppColors.grey[800],
            onPressed: onPressed,
            padding: EdgeInsets.only(left: 4),
            minWidth: 0,
            height: 0);
}
