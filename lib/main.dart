import 'package:flutter/foundation.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/dashboard_screen.dart';

void main() => runApp(
      DevicePreview(
        enabled: true,
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color.fromARGB(255, 33, 94, 237),
        canvasColor: Color.fromARGB(0, 235, 143, 32),
        primaryColorLight: Colors.brown,
        primaryColorDark: Colors.black,
        indicatorColor: Colors.white,
        cardColor: const Color(0xff232631),
      ),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: const DashboardScreen(),
    );
  }
}
