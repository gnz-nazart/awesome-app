import 'package:awesome_app/theme/colors.dart';
import 'package:awesome_app/theme/typography.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppBottomSheet extends StatelessWidget {
  String title;
  List<Widget> children;

  AppBottomSheet({this.title, this.children});

  @override
  Widget build(BuildContext context) {
    var elements = <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 48,
            height: 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: AppColors.grey[400],
            ),
          )
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CloseButton(
            color: AppColors.grey[500],
          ),
          Text(title, style: AppTextStyle.title4),
          SizedBox(width: 48.0)
        ],
      ),
      SizedBox(height: 16.0),
    ];
    if (children != null) {
      elements.addAll(children);
    }
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: elements,
        ));
  }
}
