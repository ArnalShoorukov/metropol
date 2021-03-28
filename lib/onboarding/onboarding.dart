import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:metropol/helpers/helpers.dart';

class Onboarding extends StatelessWidget {
  static const String id = '/onboarding_screen';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Helpers.greenColor),
      child: Image.asset(Helpers.logoPng),
    );
  }
}
