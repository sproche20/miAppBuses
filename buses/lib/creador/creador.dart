import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher_string.dart';

class creador extends StatefulWidget {
  const creador({super.key});

  @override
  State<creador> createState() => _creadorState();
}

class _creadorState extends State<creador> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color.fromARGB(108, 9, 9, 9),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  'Autor de cities Buses',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dongle(
                    color: Colors.white,
                    letterSpacing: 2.0,
                    fontSize: 40,
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(
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
                          bottomLeft: Radius.circular(32),
                          bottomRight: Radius.circular(32),
                          topRight: Radius.circular(32),
                        ),
                        image: const DecorationImage(
                          image: AssetImage('assets/perfil.jpg'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: size.width - 153),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hola, Bienvenido, me presento, mi nombre es Paul Roche, soy un estudiante de informatica de la U.',
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.delius(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ]
                        //cuerpo del texto-------------------------------------------------------------------------------------------------------------
                        ),
                  )
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
//cuerpo del texto-------------------------------------------------------------------------------------------------------------
                    child: Text(
                      'Espero te haya gustado mi aplicación. Esta app, lo hice con el propósito de aprender a programar en el lenguaje de programación de flutter. '
                      ' Aprovechando las vacaciones de la Universidad decidí autoeducarme en este tiempo  empezando desde  cero con este lenguaje y para automotivarme aproveché mi afición'
                      ' hacia los buses y el juego de cities skylines empezándolo a crear poco a poco mientras aprendía usar las herramientas básicas de flutter mediante videos tutoriales y blogs.'
                      ' Gracias a todo este estudio logré generar este producto que contiene información sobre algunos buses que existen en el juego además de información real de las empresas que las fabrican en la vida real. '
                      'En la aplicación no pude colocar otros modelos que hay en el juego, pero para los interesados que quieran explorar más vehículos como este, les dejo el siguiente enlace del creador de la mayoría de estos autobuses llamado DANZS, '
                      'en esa lista encontraras una gama de autobuses creados por el en el juego. Si llegaste hasta aquí no olvides valorar mi aplicación ingresando a este enlace que te dejo aquí abajo, tu opinión  sobre que tal te parecio '
                      ' y algún consejo que me quieras dar me serviría de mucho para mejorar como programador. Nos vemos en una siguiente ocasión, hasta la próxima.',
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.delius(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    )),
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.transparent,
                    border: Border(
                      top: BorderSide(
                          color: Color.fromARGB(122, 203, 203, 203),
                          width: 2.0),
                    )),
                child: Text(
                  'Mas modelos de autobuses',
                  style: GoogleFonts.itim(
                    color: Colors.white,
                    letterSpacing: 0.0,
                    fontSize: 28,
                  ),
                ),
              ),
              SizedBox(
                  child: ElevatedButton.icon(
                      icon: const Icon(
                        Icons.link,
                        size: 50,
                        color: Colors.amber,
                      ),
                      onPressed: () {
                        launchUrlString(
                            "https://steamcommunity.com/sharedfiles/filedetails/?id=449786962");
                      },
                      style: TextButton.styleFrom(
                        shape: const StadiumBorder(),
                        foregroundColor: const Color.fromARGB(255, 1, 249, 241),
                        backgroundColor: const Color.fromARGB(165, 2, 68, 92),
                      ),
                      label: Text(
                        "Enlace 1",
                        style: GoogleFonts.itim(fontSize: 30),
                      ))),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.transparent,
                    border: Border(
                      top: BorderSide(
                          color: Color.fromARGB(122, 203, 203, 203),
                          width: 2.0),
                    )),
                child: Text(
                  'Enlace para comentarios',
                  style: GoogleFonts.itim(
                    color: Colors.white,
                    letterSpacing: 0.0,
                    fontSize: 28,
                  ),
                ),
              ),
              SizedBox(
                  child: ElevatedButton.icon(
                      icon: const Icon(
                        Icons.link,
                        size: 50,
                        color: Colors.amber,
                      ),
                      onPressed: () {
                        launchUrlString("https://forms.gle/yk2fdmUkTuGybZz47");
                      },
                      style: TextButton.styleFrom(
                        shape: const StadiumBorder(),
                        foregroundColor: const Color.fromARGB(255, 1, 249, 241),
                        backgroundColor: const Color.fromARGB(165, 2, 68, 92),
                      ),
                      label: Text(
                        "Enlace 2",
                        style: GoogleFonts.itim(fontSize: 30),
                      ))),
              const SizedBox(
                height: 90,
              ),
            ],
          ),
        ));
  }
}
