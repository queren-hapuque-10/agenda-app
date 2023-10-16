import 'package:agenda/cadastro/cadastro.dart';
import 'package:agenda/menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

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
                width: 150,
                child: RichText(
                    text: TextSpan(
                        text: 'Minha',
                        style: GoogleFonts.poppins(
                          fontSize: 32,
                          color: Color.fromARGB(211, 114, 69, 145),
                          fontWeight: FontWeight.bold,
                        ),
                        children: <TextSpan>[
                      TextSpan(
                          text: ' Agenda 2023',
                          style: GoogleFonts.poppins(
                            color: Color.fromARGB(255, 255, 116, 172),
                          ))
                    ])),
              ),
              SizedBox(
                width: size.width,
                height: size.height * .3,
                child: Image.asset('assets/agenda.png'),
              ),
              Container(
                height: size.height * .3,
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
                      top: 10,
                      left: 20,
                      child: Text(
                        'Faça o Login',
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Positioned(
                        top: 50,
                        left: 20,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.mail_outline,
                                  color: Color.fromARGB(255, 250, 160, 196),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(left: 10),
                                  width: 300,
                                  child:  TextField(
                                    cursorColor: Color.fromARGB(255, 156, 156, 156),
                                    style: GoogleFonts.poppins(
                                      color: Colors.black54,
                                      fontSize: 13
                                    ),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'exemplo@gmail.com',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: size.width * .7,
                              height: 1,
                              child: const Divider(
                                color: Colors.grey,
                              ),
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
                                  Icons.key_outlined,
                                  color: Color.fromARGB(255, 250, 160, 196),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(left: 10),
                                  width: 300,
                                  child:  TextField(
                                    obscureText: true,
                                    cursorColor: Colors.grey,
                                    style: GoogleFonts.poppins(
                                      color: Color.fromARGB(255, 156, 156, 156),
                                      fontSize: 20,
                                      letterSpacing: 1.4,
                                    ),
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: '...........',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: size.width * .7,
                               height: 1,
                              child: const Divider(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        )),
                    Positioned(
                        top: 180,
                        left: 20,
                        child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => Cadastro()));
                        },
                        child: SizedBox(
                          width: size.width * .8,
                          height: 20,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Criar Conta',
                                style: GoogleFonts.poppins(
                                  color: Color.fromARGB(210, 158, 90, 143),
                                  fontSize: 13
                                ),
                              ),
                            ],
                          ),
                        ),)),
                    Positioned(
                      bottom: -30,
                      right: 30,
                       child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => Agenda()));
                        },
      
                      child: Container(
                        padding: const EdgeInsets.all(22),
                        height: 60,
                        width: 60,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                    Color.fromARGB(255, 255, 116, 172),
                    Color.fromARGB(212, 179, 117, 223),
                              ],
                              stops: [
                                0.0,
                                1.0
                              ],
                              begin: FractionalOffset.topLeft,
                              end: FractionalOffset.bottomRight),
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset('assets/seta-direita.png'),
                      ),
                    ),),
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