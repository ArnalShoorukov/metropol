import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:metropol/helpers/helpers.dart';
import 'package:metropol/reservation/res_room.dart';

class MainScreen extends StatefulWidget {
  static const String id = '/main_screen';

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
          'Бронирование',
          style: TextStyle(
            fontFamily: 'Arkhip',
            fontWeight: FontWeight.w400,
            fontSize: 36,
            color: Helpers.greenColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                onTap: () => Navigator.pushNamed(context, Room.id),
                child: Stack(
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
              ),
              const SizedBox(height: 16),
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
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
              canvasColor: Helpers.greenColor,
              primaryColor: Colors.white,
              textTheme: Theme.of(context).textTheme.copyWith(
                    caption: const TextStyle(color: Colors.grey),
                  )),
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Бронирование'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.mail_outline_sharp),
                title: Text('Чат'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.local_fire_department_sharp),
                title: Text('Квиз'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined),
                title: Text('Личный кабинет'),
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.white,
            onTap: _onItemTapped,
          )),
    );
  }

  void displayModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        //isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (context) => Container(
            //height: MediaQuery.of(context).size.height * 0.1,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 4,
                    color: Colors.black,
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Зал', style: Helpers.textStyle),
                      Text('Название', style: Helpers.textStyle),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Кол-во людей', style: Helpers.textStyle),
                      Container(
                          width: 50,
                          height: 30,
                          decoration: const BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                          child: const Center(
                              child: Text(
                            '500',
                            style: Helpers.textStyle,
                          ))),
                    ],
                  )
                ],
              ),
            )));
  }
}
