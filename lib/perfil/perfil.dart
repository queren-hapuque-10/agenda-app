import 'package:agenda/menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Perfil extends StatelessWidget {
  const Perfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xfff0f1f5),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
          padding: const EdgeInsets.all(18),
          height: size.height,
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 200,
                child: RichText(
                    text: TextSpan(
                        text: 'Bem-Vinda,  ',
                        style: GoogleFonts.poppins(
                          fontSize: 30,
                          color: Color.fromARGB(211, 114, 69, 145),
                          fontWeight: FontWeight.bold,
                        ),
                        children: <TextSpan>[
                      TextSpan(
                          text: 'Samara',
                          style: GoogleFonts.poppins(
                            color: Color.fromARGB(255, 255, 116, 172),
                          ))
                    ])),
              ),
              SizedBox(
                width: size.width,
                height: size.height * .3,
                child: Image.asset('assets/cachos.png'),
              ),
              Container(
                height: 250,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(.2),
                        spreadRadius: 2,
                        blurRadius: 20,
                        offset: const Offset(0, 0),
                      )
                    ]),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                     Positioned(
                      top: 15,
                      left: 20,
                      right: 20,
                      child: Center(
                        child: Text(
                          'Informações da Conta',
                          style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          color:  Color.fromARGB(211, 114, 69, 145)
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        top: 60,
                        left: 20,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.person_outlined,
                                  color: Color.fromARGB(255, 254, 130, 179),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(left: 10),
                                  width: 300,
                                  child: Text( "Samara Gomes",
                                  style: GoogleFonts.poppins(
                                    color: Color.fromARGB(211, 114, 69, 145),
                                    
                                  ),
                                 
                                  ),
                                ),
                              ],
                            ),
                            
                          ],
                        )),
                    Positioned(
                        top: 100,
                        left: 20,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.date_range_outlined,
                                  color: Color.fromARGB(255, 254, 130, 179),
                                ),
      
                               Container(
                                  padding: const EdgeInsets.only(left: 10),
                                  width: 300,
                                  child: Text( "04/06/2004",
                                  style: GoogleFonts.poppins(
                                    color: Color.fromARGB(211, 114, 69, 145),
                                    
                                  ),
                                 
                                  ),
                                ),
                              ],
                            ),
                           
                          ],
                        )),
                    Positioned(
                        top: 140,
                        left: 20,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.email_outlined,
                                  color: Color.fromARGB(255, 254, 130, 179),
                                ),
      
                               Container(
                                  padding: const EdgeInsets.only(left: 10),
                                  width: 300,
                                  child: Text( "samara.josefa@gmail.com.br",
                                  style: GoogleFonts.poppins(
                                    color: Color.fromARGB(211, 114, 69, 145),
                                    
                                  ),
                                 
                                  ),
                                ),
                              ],
                            ),
                           
                          ],
                        )),
       Positioned(
                        top: 180,
                        left: 20,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.phone_android_outlined,
                                  color: Color.fromARGB(255, 254, 130, 179),
                                ),
      
                               Container(
                                  padding: const EdgeInsets.only(left: 10),
                                  width: 300,
                                  child: Text( "(81) 9 8909-9785",
                                  style: GoogleFonts.poppins(
                                    color: Color.fromARGB(211, 114, 69, 145),
                                    
                                  ),
                                 
                                  ),
                                ),
                              ],
                            ),
                           
                          ],
                        )),
                    Positioned(
                      bottom: -30,
                      right: 30,
                    
                      child: Container(
                        padding: const EdgeInsets.all(22),
                        height: 80,
                        width: 80,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                    Color.fromARGB(255, 247, 228, 236),
                    Color.fromARGB(210, 221, 182, 255),
                              ],
                              stops: [
                                0.0,
                                1.0
                              ],
                              begin: FractionalOffset.topLeft,
                              end: FractionalOffset.bottomRight),
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset('assets/logo-a.png'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}