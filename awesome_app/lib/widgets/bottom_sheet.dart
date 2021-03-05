import 'package:awesome_app/theme/colors.dart';
import 'package:awesome_app/theme/typography.dart';
import 'package:flutter/material.dart';

class AppBottomSheet extends StatefulWidget {
  String title;
  List<Widget> children;
  double heightFactor;
  bool showCloseButton;

  AppBottomSheet({
    this.title,
    @required this.children,
    this.heightFactor = 0.8,
    this.showCloseButton = true,
  });

  @override
  _AppBottomSheetState createState() => _AppBottomSheetState();
}

class _AppBottomSheetState extends State<AppBottomSheet> {
  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
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
          widget.showCloseButton
              ? CloseButton(
                  color: AppColors.grey[500],
                )
              : SizedBox(width: 48.0, height: 48),
          Text(widget.title, style: AppTextStyle.title4),
          SizedBox(width: 48.0)
        ],
      ),
      SizedBox(height: 16.0),
    ];
    elements.addAll(widget.children);

    return AnimatedContainer(
        height: deviceHeight * widget.heightFactor,
        duration: Duration(milliseconds: 200),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
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
