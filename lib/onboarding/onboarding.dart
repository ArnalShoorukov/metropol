import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:metropol/helpers/helpers.dart';
import 'package:metropol/registration/registration_screen.dart';

class Onboarding extends StatefulWidget {
  static const String id = '/onboarding_screen';

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  void initState() {
    super.initState();
     Future.delayed(
        const Duration(seconds: 3),
            () =>
                Navigator.pushNamed(context, RegistrationScreen.id)
        );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Helpers.greenColor),
      child: Image.asset(Helpers.logoPng),
    );
  }
}
