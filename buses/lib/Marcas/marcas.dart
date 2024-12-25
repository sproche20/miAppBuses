import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class marcas extends StatefulWidget {
  const marcas({super.key});

  @override
  State<marcas> createState() => _marcasState();
}

class _marcasState extends State<marcas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(108, 9, 9, 9),
//Cuerpo de la aplicacion-----------------------------------------------------------------------------------------------------------
      body: SingleChildScrollView(
        //el singlechildscrollview permite hacer scroll para no tener el error de la pantalla hacia abajo.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
//titulo del texto-------------------------------------------------------------------------------------------------------------
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Text(
                'Marcas Buses',
                textAlign: TextAlign.center,
                style: GoogleFonts.dongle(
                  color: Colors.white,
                  letterSpacing: 8.0,
                  fontSize: 40,
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
//cuerpo del texto-------------------------------------------------------------------------------------------------------------
                  child: Text(
                    'Bienvenido a la seccion de marcas buses, en esta ventana encontraras todas las marcas de autobuses que estan registradas'
                    ' en cities skylines, para ingresar a cada uno aplaste el icono de la marca al cual usted quiera ingresar. ',
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.delius(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  )),
            ),
//imagenes------------------------------------------------------------------------------------------------------------------------------
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly, //Separador Horizontal
              children: [
                SizedBox(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/bmc');
                    },
                    child: Container(
                      height: 120.0,
                      width: 120.0,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 165, 165, 165),
                            width: 3.0),
                        gradient: const LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                              Color.fromARGB(255, 208, 207, 207),
                              Color.fromARGB(255, 160, 160, 160),
                              Color.fromARGB(255, 101, 101, 101),
                            ]),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(32),
                          bottomRight: Radius.circular(32),
                        ),
                        image: const DecorationImage(
                          image: AssetImage('assets/marcas/bmc.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/man');
                    },
                    child: Container(
                      height: 120.0,
                      width: 120.0,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 165, 165, 165),
                            width: 3.0),
                        gradient: const LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                              Color.fromARGB(255, 208, 207, 207),
                              Color.fromARGB(255, 160, 160, 160),
                              Color.fromARGB(255, 101, 101, 101),
                            ]),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(32),
                          bottomRight: Radius.circular(32),
                        ),
                        image: const DecorationImage(
                            image: AssetImage('assets/marcas/man1.png'),
                            fit: BoxFit.contain),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly, //Separador Horizontal
              children: [
                SizedBox(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/flyer');
                    },
                    child: Container(
                      height: 120.0,
                      width: 120.0,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 165, 165, 165),
                            width: 3.0),
                        gradient: const LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                              Color.fromARGB(255, 208, 207, 207),
                              Color.fromARGB(255, 160, 160, 160),
                              Color.fromARGB(255, 101, 101, 101),
                            ]),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(32),
                          bottomRight: Radius.circular(32),
                        ),
                        image: const DecorationImage(
                            image: AssetImage('assets/marcas/new_flyer.png'),
                            fit: BoxFit.contain),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/volvo');
                    },
                    child: Container(
                      height: 120.0,
                      width: 120.0,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 165, 165, 165),
                            width: 3.0),
                        gradient: const LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                              Color.fromARGB(255, 208, 207, 207),
                              Color.fromARGB(255, 160, 160, 160),
                              Color.fromARGB(255, 101, 101, 101),
                            ]),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(32),
                          bottomRight: Radius.circular(32),
                        ),
                        image: const DecorationImage(
                            image: AssetImage('assets/marcas/volvo.png'),
                            fit: BoxFit.contain),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly, //Separador Horizontal
              children: [
                SizedBox(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/solaris');
                    },
                    child: Container(
                      height: 120.0,
                      width: 120.0,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 165, 165, 165),
                            width: 3.0),
                        gradient: const LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                              Color.fromARGB(255, 208, 207, 207),
                              Color.fromARGB(255, 160, 160, 160),
                              Color.fromARGB(255, 101, 101, 101),
                            ]),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(32),
                          bottomRight: Radius.circular(32),
                        ),
                        image: const DecorationImage(
                            image: AssetImage('assets/marcas/solaris.png'),
                            fit: BoxFit.contain),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/liaz');
                    },
                    child: Container(
                      height: 120.0,
                      width: 120.0,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Color.fromARGB(255, 165, 165, 165),
                            width: 3.0),
                        gradient: const LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                              Color.fromARGB(255, 208, 207, 207),
                              Color.fromARGB(255, 160, 160, 160),
                              Color.fromARGB(255, 101, 101, 101),
                            ]),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(32),
                          bottomRight: Radius.circular(32),
                        ),
                        image: const DecorationImage(
                            image: AssetImage('assets/marcas/liaz.png'),
                            fit: BoxFit.contain),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 90,
            ),
          ],
        ),
      ),
    );
  }
}
