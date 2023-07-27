import 'package:flutter/material.dart';
import 'package:intro_screen_onboarding_flutter/introduction.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';
import 'package:asawolof/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Satoshi',
      ),
      home: Asawolof(),
    );
  }
}

class Asawolof extends StatelessWidget {
  final List<Introduction> list = [
    Introduction(
      title: 'ASA',
      subTitle: 'Alphabet de synthése pour l\'afrique ! ',
      imageUrl: 'assets/images/onboarding1.png',
    ),
    Introduction(
      title: 'Pour vous !',
      subTitle: 'L\'apprentissage est la clée du progrés.',
      imageUrl: 'assets/images/onboarding2.png',
    ),
    Introduction(
      title: 'Utile et Pratique',
      subTitle: 'Aprennez l\'ASA  en 1 semaine !',
      imageUrl: 'assets/images/onboarding3.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      backgroudColor: const Color(0xFFf9f9f9),
      foregroundColor: Color.fromARGB(255, 21, 20, 81),
      introductionList: list,
      onTapSkipButton: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Home(),
          )),
      skipTextStyle: const TextStyle(
        color: Colors.blueGrey,
        fontSize: 18,
      ),
    );
  }
}
