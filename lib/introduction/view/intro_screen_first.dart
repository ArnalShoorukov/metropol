import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:metropol/helpers/helpers.dart';

class IntroFirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bulb.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SvgPicture.asset(
              Helpers.logoWhite,
              semanticsLabel: 'Empty state',
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text('Я уже гость отеля'),
            ),  const ElevatedButton(
              onPressed: null,
              child: Text('Хочу познакомится с отелем'),
            ),
          ],
        ),
      ),
    );
  }
}
