import 'package:buses/Marcas/solaris/mostrar_solaris.dart';
import 'package:buses/enlaces.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class busSolaris extends StatefulWidget {
  String imageFondo;
  busSolaris(this.imageFondo);

  @override
  State<busSolaris> createState() => _busSolarisState();
}

class _busSolarisState extends State<busSolaris> {
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
                        image: AssetImage('assets/sol.jpg'), fit: BoxFit.fill),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  'Solaris',
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
                    'Solaris Bus & Coach S.A. es una empresa polaca que se especializa en la fabricación de autobuses y trolebuses.'
                    ' Fue fundada en 1996 y se ha convertido en uno de los principales fabricantes de vehículos de transporte público en Europa.'
                    ' A lo largo de los años, Solaris ha desarrollado una amplia gama de autobuses, incluyendo vehículos impulsados por energía eléctrica, '
                    'diésel y otros combustibles alternativos.'
                    ' En Cities Skylines existen 2 modelos mas importantes de esta marca. Para conocer más sobre cada tipo, haz clic en la imagen del autobús que deseas ver.',
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
                  itemCount: carruselSolaris.length,
                  itemBuilder: (context, index, realIndex) {
                    // ignore: unused_local_variable
                    final carruselSolaries = carruselSolaris[index];
                    return CardImage(
                      carruselSolaris: carruselSolaris[index],
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
            ],
          ),
        ),
      ),
    );
  }
}

class CardImage extends StatelessWidget {
  final solaris carruselSolaris;
  const CardImage({super.key, required this.carruselSolaris});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: () {
            carruselSolaris.copy();
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        mostrar_solaris(carruselSolaris: carruselSolaris)));
          },
          child: FadeInImage(
            placeholder: const AssetImage("assets/loading.gif"),
            image: AssetImage(carruselSolaris.image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
