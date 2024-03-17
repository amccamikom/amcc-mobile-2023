import 'dart:async';

import 'package:flutter/material.dart';
import 'package:libraryplus/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState

    Timer(Duration(seconds: 3),
        (() => Navigator.pushNamed(context, '/onboarding')));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
          child: RichText(
        text: TextSpan(children: <TextSpan>[
          TextSpan(text: 'Library', style: title1),
          TextSpan(
            text: 'Plus',
            style: title2,
          ),
        ]),
      )),
    );
  }
}
