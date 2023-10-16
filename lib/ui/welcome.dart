import 'package:agenda/ui/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 255, 133, 182),
                  Color.fromARGB(211, 114, 69, 145),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp)),
        child: Center(
          child: Stack(
            children: [
              Positioned(
                bottom: 260,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    Image.asset(
                      'assets/letra-a (2).png',
                      width: 130,
                    ),
                     Text(
                      'Agenda 2023',
                      style: GoogleFonts.poppins(
                        fontSize: 29,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w300,
                      ),
                    )
                  ],
                ),
              ),
               Positioned(
                  bottom: 100,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (_) => const Login()));
                      },
                      child: Container(
                        height: 50,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child:  Center(
                          child: Text(
                            'Iniciar',
                            style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(211, 114, 69, 145),
                              
                            ),
                          ),
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
