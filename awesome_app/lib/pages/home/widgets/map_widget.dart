import 'package:awesome_app/theme/typography.dart';
import 'package:flutter/material.dart';

class MapWidget extends StatefulWidget {
  @override
  _MapWidgetState createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Map',
          style: AppTextStyle.font(textStyle: AppTextStyle.title1),
        ),
      ),
      body: Center(),
    );
  }
}
