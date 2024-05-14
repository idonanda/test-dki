import 'dart:async';

import 'package:flutter/material.dart';
import 'package:test_bank_dki/const.dart';
import 'package:test_bank_dki/screen/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => const Login(),
        ),
      ),
    );

    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffFF4747),
              Color(0xffFC9842),
            ],
            begin: Alignment(0, 1),
            end: Alignment(1, 0),
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(
                "assets/images/decoration_bot_right.png",
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(
                "assets/images/decoration_right.png",
                height: height / 2,
                width: width / 2,
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                "assets/images/decoration_top_left.png",
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                "assets/images/decoration_left.png",
                height: height / 2,
                width: width / 2,
              ),
            ),
            SizedBox(
              height: height,
              width: width * .75,
              child: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/logo_splash.png",
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: width * .25,
                    child: Image.asset("assets/images/ojk_lps.png"),
                  ),
                  Container(
                    width: width * .5,
                    margin: EdgeInsets.all(20),
                    child: const Text(
                      "powered by Bank DKI\n2023",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
