import 'package:buses/enlaces.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  String imageFondo;
  SplashScreen(this.imageFondo);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var d = const Duration(seconds: 10);
    Future.delayed(d, () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
              builder: (context) => main_sceen(widget.imageFondo)),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(widget.imageFondo), fit: BoxFit.cover)),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: ListTile(
              title: Text(
                "Cities Buses",
                textAlign: TextAlign.center,
                style: GoogleFonts.itim(
                  color: Colors.white,
                  letterSpacing: 0.0,
                  fontSize: 28,
                ),
              ),
              subtitle: Text(
                "Bienvenido",
                textAlign: TextAlign.center,
                style: GoogleFonts.itim(
                  color: Colors.white,
                  letterSpacing: 0.0,
                  fontSize: 28,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(100),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              child: Container(
                height: 50.0,
                width: 200.0,
                //color: Colors.transparent,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/gif2.gif'),
                        fit: BoxFit.scaleDown)),
              ),
            ),
          ),
          /*child: CircularProgressIndicator(
              color: Color.fromARGB(255, 255, 157, 0),
            ),*/
        ),
      ]),
    );
  }
}
