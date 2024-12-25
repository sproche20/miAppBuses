import 'package:buses/enlaces.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MostrarBus extends StatelessWidget {
  const MostrarBus({super.key, required, required this.carruselMan});
  final Man carruselMan;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/fondo3.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: const Color.fromARGB(108, 9, 9, 9),
        extendBody: true,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          title: Text(
            carruselMan.name,
            textAlign: TextAlign.center,
            style: GoogleFonts.dongle(
                color: Colors.white, letterSpacing: 0.0, fontSize: 30),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 80,
              ),
              Container(
                width: double.infinity,
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: FadeInImage(
                    placeholder: const AssetImage("assets/loading.gif"),
                    image: AssetImage(carruselMan.image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      carruselMan.name,
                      style: GoogleFonts.dongle(
                        color: Colors.white,
                        letterSpacing: 0.0,
                        fontSize: 35,
                      ),
                    ),
                    Container(
                      child: Text(
                        carruselMan.description,
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.delius(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Text(
                      'Caracteristicas ${carruselMan.caracteristicas}',
                      style: GoogleFonts.patrickHand(
                        letterSpacing: 0,
                        color: Colors.white,
                        fontSize: 28,
                      ),
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
                        'Tipo de motor:',
                        style: GoogleFonts.itim(
                          letterSpacing: 0,
                          wordSpacing: 0,
                          color: Colors.white,
                          fontSize: 28,
                        ),
                      ),
                    ),
                    Text(
                      carruselMan.motor,
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.delius(
                        color: Colors.white,
                        fontSize: 20,
                      ),
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
                        'Esfuerzo de torsión:',
                        style: GoogleFonts.itim(
                          color: Colors.white,
                          letterSpacing: 0.0,
                          fontSize: 28,
                        ),
                      ),
                    ),
                    Text(
                      carruselMan.torsion,
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.delius(
                        color: Colors.white,
                        fontSize: 20,
                      ),
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
                        'Capacidad de pasajeros:',
                        style: GoogleFonts.itim(
                          color: Colors.white,
                          letterSpacing: 0.0,
                          fontSize: 28,
                        ),
                      ),
                    ),
                    Text(
                      carruselMan.pasajeros,
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.delius(
                        color: Colors.white,
                        fontSize: 20,
                      ),
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
                        'Transmision:',
                        style: GoogleFonts.itim(
                          color: Colors.white,
                          letterSpacing: 0.0,
                          fontSize: 28,
                        ),
                      ),
                    ),
                    Text(
                      carruselMan.transmision,
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.delius(
                        color: Colors.white,
                        fontSize: 20,
                      ),
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
                        'Creador del bus en Cities Skylines:',
                        style: GoogleFonts.itim(
                          color: Colors.white,
                          letterSpacing: 0.0,
                          fontSize: 28,
                        ),
                      ),
                    ),
                    Text(
                      carruselMan.creador,
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.delius(
                        color: Colors.white,
                        fontSize: 20,
                      ),
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
                        'Enlace1:',
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
                              launchUrlString(carruselMan.enlace1);
                            },
                            style: TextButton.styleFrom(
                              shape: const StadiumBorder(),
                              foregroundColor:
                                  const Color.fromARGB(255, 1, 249, 241),
                              backgroundColor:
                                  const Color.fromARGB(165, 2, 68, 92),
                            ),
                            label: const Text("Enlace 1"))),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      child: ElevatedButton.icon(
                          icon: const Icon(
                            Icons.arrow_back_ios_new,
                            size: 50,
                            color: Colors.amber,
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/man');
                          },
                          style: TextButton.styleFrom(
                            shape: const StadiumBorder(),
                            foregroundColor:
                                const Color.fromARGB(255, 1, 249, 241),
                            backgroundColor:
                                const Color.fromARGB(165, 2, 68, 92),
                          ),
                          label: const Text("ATRAS"))),
                  SizedBox(
                      child: ElevatedButton.icon(
                          icon: const Icon(
                            Icons.home_rounded,
                            size: 50,
                            color: Colors.amber,
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/');
                          },
                          style: TextButton.styleFrom(
                            shape: const StadiumBorder(),
                            foregroundColor:
                                const Color.fromARGB(255, 1, 249, 241),
                            backgroundColor:
                                const Color.fromARGB(165, 2, 68, 92),
                          ),
                          label: const Text("INICIO"))),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
