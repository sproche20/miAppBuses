import 'package:buses/Marcas/MAN_LIONS/mostrar_bus.dart';
import 'package:buses/enlaces.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class man_lions extends StatefulWidget {
  String imageFondo;
  man_lions(this.imageFondo);

  @override
  State<man_lions> createState() => _man_lionsState();
}

class _man_lionsState extends State<man_lions> {
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
              SizedBox(
                child: Container(
                  height: 160.0,
                  width: 490.0,
                  margin: EdgeInsets.all(0),
                  decoration: const BoxDecoration(
                    color: Colors.blueAccent,
                    image: DecorationImage(
                        image: AssetImage('assets/portadaMan3.jpg'),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  'Man Lions',
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
                    'Man Lions es una empresa de automoviles fundada en 1758. Originalmente, la empresa se dedicaba a la fabricación de maquinaria pesada'
                    ' y equipos industriales. Con el tiempo, se diversificó en la fabricación de vehículos comerciales, incluyendo autobuses.'
                    'En la actualidad Man Lions produce una amplia gama de vehículos comerciales, incluyendo autobuses de transporte público y autocares. '
                    'Sus autobuses se utilizan en todo el mundo para el transporte de pasajeros en entornos urbanos y de larga distancia. '
                    'En Cities Skylines existen 9 modelos de esta marca. Para conocer más sobre cada tipo, haz clic en la imagen del autobús que deseas ver.',
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
                  itemCount: carruselMan.length,
                  itemBuilder: (context, index, realIndex) {
                    final carruselMans = carruselMan[index];
                    return CardImage(carruselMan: carruselMan[index]);
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
                      shape: StadiumBorder(),
                      foregroundColor: Color.fromARGB(255, 1, 249, 241),
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
  final Man carruselMan;
  const CardImage({super.key, required, required this.carruselMan});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: () {
            carruselMan.copy();
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        MostrarBus(carruselMan: carruselMan)));
          },
          child: FadeInImage(
            placeholder: const AssetImage("assets/loading.gif"),
            image: AssetImage(carruselMan.image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
