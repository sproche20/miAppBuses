// ignore_for_file: must_be_immutable

import 'package:buses/Marcas/liaz/liaz.dart';
import 'package:buses/Marcas/new_flyer/flayer.dart';
import 'package:buses/Marcas/solaris/busSolaris.dart';
import 'package:buses/Marcas/volvo/volvo.dart';
import 'package:buses/enlaces.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  String imageFondo = 'assets/fondo1.jpeg';
  String imageFondo2 = 'assets/fondo1.jpeg';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Buses',
      initialRoute: '/splash',
      routes: {
        '/home': (context) => HomeBuses(),
        '/marcas': (context) => marcas(),
        '/': (context) => main_sceen(imageFondo),
        '/bmc': (context) => bmc(imageFondo),
        '/man': (context) => man_lions(imageFondo),
        '/flyer': (context) => Flyer(imageFondo),
        '/volvo': (context) => volvo(imageFondo),
        '/liaz': (context) => busliaz(imageFondo),
        '/solaris': (context) => busSolaris(imageFondo),
        '/creador': (context) => creador(),
        '/splash': (context) => SplashScreen(imageFondo)
      },
      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(color: Color.fromARGB(119, 2, 68, 92)),
      ),
    );
  }
}
