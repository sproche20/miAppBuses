import 'package:buses/enlaces.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

// ignore: must_be_immutable
class volvo extends StatefulWidget {
  String imageFondo;
  volvo(this.imageFondo);

  @override
  State<volvo> createState() => _volvoState();
}

class _volvoState extends State<volvo> {
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
                        image: AssetImage('assets/volvo.jpg'),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  'Volvo',
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
                    'Volvo Buses es la división de Volvo Group que se especializa en la fabricación de autobuses y vehículos'
                    ' de transporte público. Esta empresa sueca es conocida por producir una amplia gama de autobuses y autocares'
                    'para diversas aplicaciones, incluyendo servicios urbanos, interurbanos e intermunicipales.'
                    'Volvo Buses ofrece una variedad de modelos de autobuses y autocares, incluyendo:'
                    'Volvo 7900 Electric,Volvo 9700 y los Autobuses híbridos.'
                    'La gama de productos y tecnologías de Volvo Buses está en constante evolución para mantenerse al día con las últimas tendencias en transporte sostenible y seguridad.'
                    'En Cities Skylines existen 3 modelos mas importantes de esta marca. Para conocer más sobre cada tipo, haz clic en la imagen del autobús que deseas ver.',
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
                  itemCount: carruselVolvo.length,
                  itemBuilder: (context, index, realIndex) {
                    // ignore: unused_local_variable
                    final carruselVolvos = carruselVolvo[index];
                    return CardImage(
                      carruselVolvo: carruselVolvo[index],
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
  final flyer carruselVolvo;
  const CardImage({super.key, required this.carruselVolvo});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: () {
            carruselVolvo.copy();
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        mostrar_Volvo(carruselVolvo: carruselVolvo)));
          },
          child: FadeInImage(
            placeholder: const AssetImage("assets/loading.gif"),
            image: AssetImage(carruselVolvo.image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
