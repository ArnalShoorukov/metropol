import 'package:flutter/material.dart';
import 'package:metropol/helpers/helpers.dart';
import 'package:metropol/main/main_screen.dart';
import 'package:metropol/onboarding/onboarding.dart';
import 'package:metropol/registration/registration_screen.dart';
import 'package:metropol/reservation/res_room.dart';
import 'package:metropol/reservation/take_your_cofee.dart';
import 'package:metropol/reservation/take_your_cofee_qr.dart';
import 'package:metropol/service_locator.dart';

void main() {
  // Setup GetIt service locator
  setUpServiceLocator();


  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primaryColor: Helpers.greenColor,
      ),
    initialRoute: Onboarding.id,
    routes: {
      Onboarding.id: (context) => Onboarding(),
      RegistrationScreen.id: (context) => RegistrationScreen(),
      TakeYourCoffee.id: (context) => TakeYourCoffee(),
      TakeYourCoffeeQR.id: (context) => TakeYourCoffeeQR(),
      MainScreen.id: (context) => MainScreen(),
      Room.id: (context) => Room(),
    }
    );
  }
}
