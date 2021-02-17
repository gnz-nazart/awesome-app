import 'package:awesome_app/theme/colors.dart';
import 'package:awesome_app/theme/typography.dart';
import 'package:flutter/material.dart';

class AppButton extends FlatButton {
  static const double defaultBorderRadius = 8.0;
  static const double defaultHeight = 48.0;

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
                    : TextStyle(
                        fontSize: AppTextStyle.normalBold.fontSize,
                        fontWeight: AppTextStyle.normalBold.fontWeight,
                      )),
            textColor: textColor,
            color: color,
            onPressed: onPressed,
            padding: padding,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(defaultBorderRadius),
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
            height: AppButton.defaultHeight,
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
              fontSize: AppTextStyle.normalBold.fontSize,
              decoration: TextDecoration.underline,
              fontWeight: AppTextStyle.normalBold.fontWeight,
            ),
            color: Colors.white,
            textColor: AppColors.grey[800],
            onPressed: onPressed,
            padding: EdgeInsets.only(left: 4),
            minWidth: 0,
            height: 0);
}
