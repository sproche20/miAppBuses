import 'package:buses/enlaces.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

class bmc extends StatefulWidget {
  String imageFondo;
  bmc(this.imageFondo);

  @override
  State<bmc> createState() => _bmcState();
}

class _bmcState extends State<bmc> {
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
                  height: 130.0,
                  width: 490.0,
                  margin: EdgeInsets.all(0),
                  decoration: const BoxDecoration(
                    color: Colors.blueAccent,
                    image: DecorationImage(
                        image: AssetImage('assets/busBmc.jpg'),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  'BMC',
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
                      'BMC es una empresa líder en el sector del transporte de pasajeros a través de su flota de autobuses. '
                      'Fundada en 1964, la empresa ha experimentado un crecimiento constante y se ha establecido '
                      'como un actor destacado en la industria. Ofrece una amplia gama de servicios de transporte público, así como '
                      'soluciones personalizadas para grupos y compañías. A lo largo de su trayectoria, BMC ha forjado una sólida '
                      'reputación basada en la calidad de sus servicios y su contribución al desarrollo de la infraestructura de transporte en las'
                      ' regiones donde opera. En Cities Skylines existen 3 modelos de esta marca. Para conocer más sobre cada tipo, haz clic en la imagen del autobús que deseas ver.',
                      textAlign: TextAlign.justify,
                      style: GoogleFonts.delius(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              CarouselSlider.builder(
                  itemCount: carruselImages.length,
                  itemBuilder: (context, index, realIndex) {
                    final carruselImage = carruselImages[index];
                    return CardImages(
                      carruselImages: carruselImages[index],
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

class CardImages extends StatelessWidget {
  final Buses carruselImages;
  const CardImages({Key? key, required this.carruselImages}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: () {
            carruselImages.copy();
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MostrarBuses(
                          carruselImages: carruselImages,
                        )));
          },
          child: FadeInImage(
            placeholder: const AssetImage("assets/loading.gif"),
            image: AssetImage(carruselImages.image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
