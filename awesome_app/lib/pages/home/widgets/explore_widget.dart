import 'package:awesome_app/theme/typography.dart';
import 'package:flutter/material.dart';

class ExploreWidget extends StatefulWidget {
  @override
  _ExploreWidgetState createState() => _ExploreWidgetState();
}

class _ExploreWidgetState extends State<ExploreWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Explore',
          style: AppTextStyle.font(textStyle: AppTextStyle.title1),
        ),
      ),
      body: Center(),
    );
  }
}
