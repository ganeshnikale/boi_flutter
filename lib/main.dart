import 'package:flutter/material.dart';

import 'pages/bank_transfer.dart';

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
        fontFamily: 'Georgia',
        textTheme: const TextTheme(
          displayLarge: TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.normal,
              color: Colors.black),
          // headline1: TextStyle(
          //     fontSize: 24.0,
          //     fontWeight: FontWeight.normal,
          //     color: Colors.black),
          // headline2: TextStyle(
          //     fontSize: 20.0,
          //     fontWeight: FontWeight.normal,
          //     color: Colors.black),
          // headline3: TextStyle(
          //     fontSize: 16.0,
          //     fontWeight: FontWeight.normal,
          //     color: Colors.black),
          // bodyLarge: TextStyle(
          //     fontSize: 16.0,
          //     fontWeight: FontWeight.normal,
          //     color: Colors.black),
          // bodyMedium: TextStyle(
          //     fontSize: 14.0,
          //     fontWeight: FontWeight.normal,
          //     color: Colors.black),
          // bodySmall: TextStyle(
          //     fontSize: 12.0,
          //     fontWeight: FontWeight.normal,
          //     color: Colors.black),
          // caption: TextStyle(
          //     fontSize: 14.0,
          //     fontWeight: FontWeight.normal,
          //     color: Colors.black),
        ),

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
      home: BankTransfer(),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
