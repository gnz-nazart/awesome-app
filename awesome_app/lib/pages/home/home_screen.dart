import 'package:awesome_app/pages/home/widgets/explore_widget.dart';
import 'package:awesome_app/pages/home/widgets/map_widget.dart';
import 'package:awesome_app/pages/home/widgets/saved_widget.dart';
import 'package:awesome_app/pages/home/widgets/user_widget.dart';
import 'package:awesome_app/theme/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
  }

  Widget _getHomeWidget() {
    switch (_currentIndex) {
      case 0:
        return ExploreWidget();
      case 1:
        return SavedWidget();
      case 2:
        return MapWidget();
      case 3:
        return UserWidget();
      default:
        return const SizedBox();
    }
  }

  @override
  Widget build(BuildContext context) {
    const iconWidth = 24.0;
    const iconHeight = 24.0;
    final defaultColor = AppColors.grey[500];
    const activeIconColor = AppColors.primaryColor;
    return Scaffold(
      body: Scaffold(
        body: _getHomeWidget(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w600, fontSize: 12),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: defaultColor,
        unselectedLabelStyle: TextStyle(color: defaultColor, fontSize: 12),
        onTap: (int index) {
          if (index != _currentIndex)
            setState(() {
              _currentIndex = index;
            });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
                padding: EdgeInsets.only(top: 6, bottom: 6),
                child: SvgPicture.asset('assets/images/icons/loupe.svg',
                    height: iconHeight, width: iconWidth, color: defaultColor)),
            activeIcon: Padding(
                padding: EdgeInsets.only(top: 6, bottom: 6),
                child: SvgPicture.asset('assets/images/icons/loupe.svg',
                    height: iconHeight,
                    width: iconWidth,
                    color: activeIconColor)),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
              icon: Padding(
                  padding: EdgeInsets.only(top: 6, bottom: 6),
                  child: SvgPicture.asset('assets/images/icons/like.svg',
                      height: iconHeight,
                      width: iconWidth,
                      color: defaultColor)),
              activeIcon: Padding(
                  padding: EdgeInsets.only(top: 6, bottom: 6),
                  child: SvgPicture.asset('assets/images/icons/like.svg',
                      height: iconHeight,
                      width: iconWidth,
                      color: activeIconColor)),
              label: 'Saved'),
          BottomNavigationBarItem(
              icon: Padding(
                  padding: EdgeInsets.only(top: 6, bottom: 6),
                  child: SvgPicture.asset('assets/images/icons/placeholder.svg',
                      height: iconHeight,
                      width: iconWidth,
                      color: defaultColor)),
              activeIcon: Padding(
                  padding: EdgeInsets.only(top: 6, bottom: 6),
                  child: SvgPicture.asset('assets/images/icons/placeholder.svg',
                      height: iconHeight,
                      width: iconWidth,
                      color: activeIconColor)),
              label: 'Map'),
          BottomNavigationBarItem(
              icon: Padding(
                  padding: EdgeInsets.only(top: 6, bottom: 6),
                  child: SvgPicture.asset('assets/images/icons/user.svg',
                      height: iconHeight,
                      width: iconWidth,
                      color: defaultColor)),
              activeIcon: Padding(
                  padding: EdgeInsets.only(top: 6, bottom: 6),
                  child: SvgPicture.asset('assets/images/icons/user.svg',
                      height: iconHeight,
                      width: iconWidth,
                      color: activeIconColor)),
              label: 'User'),
        ],
      ),
    );
  }
}
