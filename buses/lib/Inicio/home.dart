import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeBuses extends StatefulWidget {
  const HomeBuses({super.key});

  @override
  State<HomeBuses> createState() => _HomeBusesState();
}

class _HomeBusesState extends State<HomeBuses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(108, 9, 9, 9),
      //Cuerpo de la aplicacion
      body: SingleChildScrollView(
        child: Column(
          children: [
            //titulo del texto
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Text(
                'Cities Buses',
                textAlign: TextAlign.center,
                style: GoogleFonts.dongle(
                  color: Colors.white,
                  letterSpacing: 5.0,
                  fontSize: 40,
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                  child: Text(
                    'Hola amigos Bienvenidos al mundo de los buses de Cities Sylines.',
                    textAlign: TextAlign.justify,
                    maxLines: 2,
                    style: GoogleFonts.delius(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  )),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    'Aqui encontraras informacion interesante sobre todos los autobuses que existen en el juego, '
                    'tanto los vanillas como los creados por los usuarios, con sus respectivas marcas, modelos y caracteristicas de cada bus,'
                    ' espero les guste mi pagina y Bienvenidos ',
                    textAlign: TextAlign.justify,
                    style: GoogleFonts.delius(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  )),
            ),

            SizedBox(
              child: Container(
                height: 190.0,
                width: 350.0,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Color.fromARGB(255, 165, 165, 165), width: 3.0),
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
                    bottomLeft: Radius.circular(32),
                    bottomRight: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                  image: const DecorationImage(
                    image: AssetImage('assets/bus.jpg'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            SizedBox(
              child: Container(
                  height: 190.0,
                  width: 350.0,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromARGB(255, 165, 165, 165), width: 3.0),
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
                      bottomLeft: Radius.circular(32),
                      bottomRight: Radius.circular(32),
                      topRight: Radius.circular(32),
                    ),
                    image: const DecorationImage(
                      image: AssetImage('assets/busdos.jpg'),
                      fit: BoxFit.contain,
                    ),
                  )),
            ),
            const SizedBox(
              height: 80,
            ),

            //cuerpo del texto
          ],
        ),
      ),
    );
  }
}
