import 'package:buses/enlaces.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:carousel_slider/carousel_slider.dart';

class Flyer extends StatefulWidget {
  String imageFondo;
  Flyer(this.imageFondo);

  @override
  State<Flyer> createState() => _FlyerState();
}

class _FlyerState extends State<Flyer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(widget.imageFondo), fit: BoxFit.cover)),
      child: Scaffold(
          backgroundColor: Color.fromARGB(108, 9, 9, 9),
          extendBody: true,
          extendBodyBehindAppBar: true,
          //cabecera-------------------------------------------------------------------------
          appBar: AppBar(
            centerTitle: true,
            automaticallyImplyLeading: false,
            title: const Text('Cities Buses'),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
          ),
          body: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    height: 80,
                  ),
//portada----------------------------------------------------------------------------
                  SizedBox(
                    child: Container(
                      height: 180.0,
                      width: 490.0,
                      margin: EdgeInsets.all(0),
                      decoration: const BoxDecoration(
                        color: Colors.blueAccent,
                        image: DecorationImage(
                            image: AssetImage('assets/portadaFlyer.jpeg'),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      'New Flyer',
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
                      child: Text(
                        'New Flyer es una empresa líder en la fabricación de autobuses y vehículos de tránsito público con sede en Winnipeg, Canadá. '
                        'Fundada en 1930, la compañía se ha destacado por su compromiso con la innovación y la sostenibilidad en la industria del transporte público.'
                        'La empresa  se destaca por su compromiso con la innovación y la sostenibilidad en la industria del transporte. Su enfoque en tecnologías avanzadas '
                        'y soluciones de movilidad sostenible la ha posicionado como un líder en el mercado.'
                        'En Cities Skylines existen 8 modelos de esta marca. Para conocer más sobre cada tipo, haz clic en la imagen del autobús que deseas ver.',
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.delius(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CarouselSlider.builder(
                      itemCount: carruselFlyer.length,
                      itemBuilder: (context, index, realIndex) {
                        final carruselFlyers = carruselFlyer[index];
                        return CardImage(
                          carruselFlyer: carruselFlyer[index],
                        );
                      },
                      options: CarouselOptions(
                        height: 200.0,
                        autoPlay: true,
                        autoPlayCurve: Curves.easeInOut,
                        enlargeCenterPage: true,
                        autoPlayInterval: const Duration(seconds: 5),
                        scrollDirection: Axis.horizontal,
                      )),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                          child: ElevatedButton.icon(
                        icon: const Icon(
                          Icons.home_rounded,
                          size: 45,
                          color: Colors.amber,
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/');
                        },
                        style: TextButton.styleFrom(
                          foregroundColor: Color.fromARGB(255, 1, 249, 241),
                          shape: StadiumBorder(),
                          backgroundColor: const Color.fromARGB(165, 2, 68, 92),
                        ),
                        label: Text(
                          "INICIO",
                          style: GoogleFonts.itim(
                            fontSize: 30,
                          ),
                        ),
                      )),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ]),
          )),
    );
  }
}

class CardImage extends StatelessWidget {
  final flyer carruselFlyer;
  const CardImage({super.key, required this.carruselFlyer});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: () {
            carruselFlyer.copy();
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        Mostrar_flyer(carruselFlyer: carruselFlyer)));
          },
          child: FadeInImage(
            placeholder: const AssetImage("assets/loading.gif"),
            image: AssetImage(carruselFlyer.image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
