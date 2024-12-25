import 'package:buses/enlaces.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class busliaz extends StatefulWidget {
  String imageFondo;
  busliaz(this.imageFondo);

  @override
  State<busliaz> createState() => _liazState();
}

class _liazState extends State<busliaz> {
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
                        image: AssetImage('assets/fondoliaz.png'),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  'Liaz',
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
                    'La empresa de buses LIAZ es un fabricante de vehículos comerciales, en particular de autobuses y camiones, con sede en la República Checa.'
                    'LIAZ tiene una larga historia que se remonta a 1951, cuando fue fundada en la ciudad de Liberec, en la entonces Checoslovaquia. Durante décadas, '
                    'la empresa se dedicó a la fabricación de autobuses, camiones y otros vehículos comerciales. Fue uno de los principales fabricantes de vehículos en Europa'
                    ' del Este y suministró sus productos tanto al mercado doméstico como a otros países del bloque del Este.'
                    'LIAZ se especializa en la producción de autobuses y camiones de diversos tamaños y capacidades. Sus vehículos se utilizan para el transporte público, '
                    'el transporte de carga y diversas aplicaciones comerciales. A lo largo de los años, han desarrollado una amplia gama de modelos para satisfacer las necesidades de diferentes mercados y clientes.'
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
                  itemCount: carruselLiaz.length,
                  itemBuilder: (context, index, realIndex) {
                    final carruselLiass = carruselLiaz[index];
                    return CardImage(
                      carruselLiaz: carruselLiaz[index],
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
  final liaz carruselLiaz;
  const CardImage({super.key, required this.carruselLiaz});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: () {
            carruselLiaz.copy();
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        mostrar_liaz(carruselLiaz: carruselLiaz)));
          },
          child: FadeInImage(
            placeholder: const AssetImage("assets/loading.gif"),
            image: AssetImage(carruselLiaz.image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
