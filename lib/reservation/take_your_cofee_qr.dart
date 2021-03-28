import 'package:flutter/material.dart';
import 'package:metropol/helpers/helpers.dart';
import 'package:metropol/main/main_screen.dart';
import 'package:metropol/onboarding/onboarding.dart';

class TakeYourCoffeeQR extends StatelessWidget {
  static const String id = '/coffee_qr_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(color: Helpers.greenColor),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 50),
                Image.asset(
                  Helpers.logoPng,
                  width: 130,
                  height: 124,
                ),
                const SizedBox(height: 50),
                const Text(
                  'Держи свой кофе!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Arkhip',
                      fontWeight: FontWeight.w400,
                      fontSize: 36,
                      color: Colors.white),
                ),
                const SizedBox(height: 30),
                const Text(
                  'Можешь воспользоваться им сейчас или \n '
                  'отложить на следующий раз',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Corbel',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.white),
                ),
                const SizedBox(height: 16),
                Image.asset(
                  Helpers.qrCode,
                  width: 187,
                  height: 156,
                ),
                const SizedBox(height: 160),

                Container(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        onPrimary: Colors.white,
                        primary: Colors.white,
                        onSurface: Colors.white,
                        side: const BorderSide(color: Colors.black),
                        elevation: 20,
                        minimumSize: const Size(150, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )),
                    onPressed: () {
                      Navigator.pushNamed(context, MainScreen.id);
                    },
                    child: const Text(
                      'Вернуться на главный экран',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
