import 'package:flutter/material.dart';
import 'package:metropol/helpers/helpers.dart';

class Room extends StatefulWidget {
  static const String id = '/room_screen';

  @override
  _RoomState createState() => _RoomState();
}

class _RoomState extends State<Room> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final textDesc = ' - система “Умный дом” \n '
      ' - кровать king size или две раздельные кровати; \n'
      ' - просторная мраморная ванная комната с ванной, ... ';

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
          'Номера',
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
            onPressed: () {
              displayModalBottomSheet(context);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                        'Делюкс',
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
              const SizedBox(height: 16),
              Text(textDesc, style: Helpers.textStyle),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('\$50.00', style: Helpers.textStyleGreen,),
                  Container(
                    width: 150,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          onPrimary: Helpers.greenColor,
                          primary: Helpers.greenColor,
                          onSurface: Colors.white,
                          side: const BorderSide(color: Colors.black),
                          elevation: 20,
                          minimumSize: const Size(150, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          )),
                      onPressed: () {
                       // Navigator.pushNamed(context, MainScreen.id);
                      },
                      child: const Text(
                        'Смотреть',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),

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
                        'Гранд супериор',
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
              const SizedBox(height: 16),
              Text(textDesc, style: Helpers.textStyle),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('\$50.00', style: Helpers.textStyleGreen,),
                  Container(
                    width: 150,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          onPrimary: Helpers.greenColor,
                          primary: Helpers.greenColor,
                          onSurface: Colors.white,
                          side: const BorderSide(color: Colors.black),
                          elevation: 20,
                          minimumSize: const Size(150, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          )),
                      onPressed: () {
                        // Navigator.pushNamed(context, MainScreen.id);
                      },
                      child: const Text(
                        'Смотреть',
                        style: TextStyle(fontSize: 16, color: Colors.white),
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
    const textDate = 'от 03/04/2020 до 05/04/2020';
    showModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        builder: (context) => Container(
            height: MediaQuery.of(context).size.height * 0.1,
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
                    children: [
                      const Text('Кол-во людей', style: Helpers.textStyle),
                      Container(
                          width: 100,
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Helpers.grey1Color,
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                          child: const Center(
                              child: Text(
                            '500',
                            style: Helpers.textStyle,
                          ))),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Container(
                      width: double.maxFinite,
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Helpers.grey1Color,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      child:  Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                textDate,
                                style: Helpers.textStyle,
                              ),
                              const Icon(Icons.calendar_today_outlined)
                            ],
                          ))),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       const Text('Завтрак', style: Helpers.textStyle),

                      Image.asset(
                        Helpers.on,

                        //height: 124,
                      ),
                    ],
                  ),
                ],
              ),
            )));
  }
}
