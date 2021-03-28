import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:metropol/helpers/helpers.dart';

class MainScreen extends StatefulWidget {
  static const String id = '/main_screen';

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'Likes',
      style: optionStyle,
    ),
    Text(
      'Search',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Helpers.greenColor,
            ),
          ),
          title: const Text(
            'Залы',
            style: TextStyle(
              fontFamily: 'Arkhip',
              fontWeight: FontWeight.w400,
              fontSize: 36,
              color: Helpers.greenColor,
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.filter_list,
                color: Helpers.greenColor,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      Helpers.mainOne,
                      width: double.maxFinite,
                      fit: BoxFit.fitWidth,
                      //height: 124,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 20.0),
                    ),
                    const Positioned(
                      left: 0.0,
                      bottom: 0.0,
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Номера',
                          style: TextStyle(
                              fontFamily: 'Arkhip',
                              fontWeight: FontWeight.w400,
                              fontSize: 24,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Stack(
                  children: [
                    Image.asset(
                      Helpers.mainTwo,
                      width: double.maxFinite,
                      fit: BoxFit.fitWidth,
                      //height: 124,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 20.0),
                    ),
                    const Positioned(
                      left: 0.0,
                      bottom: 0.0,
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Мероприятия',
                          style: TextStyle(
                              fontFamily: 'Arkhip',
                              fontWeight: FontWeight.w400,
                              fontSize: 24,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Stack(
                  children: [
                    Image.asset(
                      Helpers.mainThree,
                      width: double.maxFinite,
                      fit: BoxFit.fitWidth,
                      //height: 124,
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 20.0),
                    ),
                    const Positioned(
                      left: 0.0,
                      bottom: 0.0,
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Конференции',
                          style: TextStyle(
                              fontFamily: 'Arkhip',
                              fontWeight: FontWeight.w400,
                              fontSize: 24,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
            decoration: BoxDecoration(color: Helpers.greenColor, boxShadow: [
              BoxShadow(
                blurRadius: 32,
                color: Colors.black.withOpacity(.1),
              )
            ]),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                  vertical: 8,
                ),
                child: GNav(
                    /*  rippleColor: Colors.grey[300],
    hoverColor: Colors.grey[100],*/
                    gap: 4,
                    activeColor: Colors.black,
                    iconSize: 24,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 12,
                    ),
                    duration: const Duration(milliseconds: 400),
                    tabBackgroundColor: Helpers.greyColor,
                    tabs: [
                      GButton(
                        icon: Icons.home,
                        text: 'Бронирование',
                      ),
                      GButton(
                        icon: Icons.mail_outline_sharp,
                        text: 'Чат',
                      ),
                      GButton(
                        icon: Icons.local_fire_department_sharp,
                        text: 'Квиз',
                      ),
                      GButton(
                        icon: Icons.account_circle_outlined,
                        text: 'Личный кабинет',
                      ),
                    ],
                    selectedIndex: _selectedIndex,
                    onTabChange: (index) {
                      setState(() {
                        _selectedIndex = index;
                      });
                    }),
              ),
            )));
  }
}
