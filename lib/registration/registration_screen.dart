import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:metropol/helpers/helpers.dart';
import 'package:metropol/reservation/take_your_cofee.dart';

class RegistrationScreen extends StatelessWidget {
  static const String id = '/registration_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Helpers.regBack),
          fit: BoxFit.fill,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
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
                'Регистрация',
                style: TextStyle(
                    fontFamily: 'Arkhip',
                    fontWeight: FontWeight.w400,
                    fontSize: 36,
                    color: Colors.white),
              ),
              const SizedBox(height: 30),
              const Text(
                'При регистрации   кофе в подарок!',
                style: TextStyle(
                    fontFamily: 'Corbel',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Colors.white),
              ),
              TextFormField(
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white),
                cursorColor: Colors.white,
                decoration: const InputDecoration(
                    hintStyle: TextStyle(color: Colors.white),
                    labelStyle: TextStyle(color: Colors.white),
                    focusColor: Colors.white,
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.white,
                    )),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.white,
                    )),
                    fillColor: Colors.white,
                    labelText: 'Имя'),
              ),
              const SizedBox(height: 50),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Image.asset(Helpers.google),
                      iconSize: 50,
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Image.asset(Helpers.facebook),
                      iconSize: 50,
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Image.asset(Helpers.yandex),
                      iconSize: 50,
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              const SizedBox(height: 130),
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
                    Navigator.pushNamed(context, TakeYourCoffee.id);
                  },
                  child: const Text(
                    'Забронировать',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
