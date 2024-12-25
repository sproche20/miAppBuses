import 'package:buses/enlaces.dart';

import 'package:flutter/material.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';

// ignore: must_be_immutable
class main_sceen extends StatefulWidget {
  String imageFondo;
  main_sceen(this.imageFondo);

  @override
  State<main_sceen> createState() => _main_sceenState();
}

// ignore: camel_case_types
class _main_sceenState extends State<main_sceen> {
  int _paginaActual = 1;
  List<Widget> _paginas = [marcas(), HomeBuses(), creador()];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(widget.imageFondo), fit: BoxFit.cover)),
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        body: _paginas[_paginaActual],
        bottomNavigationBar: CurvedNavigationBar(
          index: _paginaActual,
          onTap: (index) {
            setState(() {
              _paginaActual = index;
            });
          },
          height: 60,
          items: <Widget>[
            _builNavItem(Icons.directions_bus, _paginaActual == 0),
            _builNavItem(Icons.home_outlined, _paginaActual == 1),
            _builNavItem(Icons.person, _paginaActual == 2),
          ],

          //Color de la barra de navegacion
          color: Color.fromARGB(165, 2, 68, 92),
          //Color de fondo de iconos
          buttonBackgroundColor: Color.fromARGB(165, 2, 68, 92),
          //Color de fondo detras de la barra
          backgroundColor: Colors.transparent,
          //curva de animacion
          animationCurve: Curves.easeInOut,
          //duracion de animacion
          animationDuration: const Duration(milliseconds: 500),
        ),
      ),
    );
  }

  Widget _builNavItem(IconData icon, bool isSelected) {
    return Icon(icon,
        size: 30,
        color: isSelected ? Color.fromARGB(255, 1, 249, 241) : Colors.amber);
  }
}
