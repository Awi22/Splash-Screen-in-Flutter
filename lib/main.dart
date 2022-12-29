import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:webview_02/home.dart';

import 'splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: AnimatedSplashScreen(
        splash: Icons.home,
        duration: 3000,
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.yellow,
        nextScreen: const MyHomePage(title: 'Retail Kumala'),
        // Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Container(
        //         height: 150,
        //         width: 150,
        //         color: Colors.red,
        //       ),
        //       Container(
        //         child: const Text(
        //           'AWI',
        //           style: TextStyle(
        //             fontSize: 24,
        //             fontWeight: FontWeight.bold,
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        // nextScreen: const MyHomePage(title: 'Retail Kumala'),
      ),
    );
  }
}
