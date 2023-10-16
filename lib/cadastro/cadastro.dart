import 'package:agenda/menu.dart';
import 'package:agenda/perfil/perfil.dart';
import 'package:agenda/ui/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Cadastro extends StatelessWidget {
  const Cadastro({Key? key}) : super(key: key);

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
                width: 100,
                child: RichText(
                    text: TextSpan(
                        text: 'Criar',
                        style: GoogleFonts.poppins(
                          fontSize: 32,
                          color: Color.fromARGB(211, 114, 69, 145),
                          fontWeight: FontWeight.bold,
                        ),
                        children: <TextSpan>[
                      TextSpan(
                          text: 'Conta',
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
                height: size.height * .5,
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
                      left: 90,
                      right: 90,
                      child: Text(
                        'Cadastre-se',
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(210, 84, 5, 137),
                        ),
                      ),
                    ),
      
                        Positioned(
                        top: 40,
                        left: 20,
                        bottom: 20
                        ,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.person_2_outlined,
                                  color: Color.fromARGB(211, 114, 69, 145),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(left: 10),
                                  width: 250,
                                
                                  child:  TextField(
                                    cursorColor: Colors.grey,
                                    style: GoogleFonts.poppins(
                                      color: Colors.black54,
                                    
                                    ),
                                    decoration: InputDecoration(
                                       enabledBorder: UnderlineInputBorder(
                                        borderSide:BorderSide(style: BorderStyle.solid,
                                        color: Color.fromARGB(255, 250, 160, 196), ) ),
      
                                        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color:   
                                        Color.fromARGB(169, 115, 69, 145), width: 2,)),
      
                                      hintText: 'Nome',
                                      
                                      hintStyle: TextStyle(fontSize: 14, color:  Color.fromARGB(110, 115, 69, 145),)
      
                                      
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: size.width * .6,
                            
                          
                            ),
                          ],
                        )),
                    Positioned(
                        top: 80,
                        left: 20,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.date_range,
                                  color:  Color.fromARGB(211, 114, 69, 145),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(left: 10),
                                  width: 250,
                                  child:  TextField(
                                    cursorColor: Colors.grey,
                                    style: GoogleFonts.poppins(
                                      color: Colors.black54,
                                    ),
                                    decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(borderSide:BorderSide(style: BorderStyle.solid, color:  Color.fromARGB(255, 250, 160, 196),) ),
      
                                       focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color:  Color.fromARGB(169, 115, 69, 145), width: 2)),
      
                                      hintText: 'Data de Nascimento',
                                       hintStyle: TextStyle(fontSize: 14, color: Color.fromARGB(110, 115, 69, 145))
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: size.width * .6,
                          
                            ),
                          ],
                        )),
      
                 Positioned(
                        top: 120,
                        left: 20,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.phone_android_outlined,
                                  color: Color.fromARGB(211, 114, 69, 145),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(left: 10),
                                  width: 250,
                                  child:  TextField(
                                    cursorColor: Colors.grey,
                                    style: GoogleFonts.poppins(
                                      color: Colors.black54,
                                    ),
                                    decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(borderSide:BorderSide(style: BorderStyle.solid, color: Color.fromARGB(255, 250, 160, 196),) ),
      
                                         focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color:  Color.fromARGB(169, 115, 69, 145), width: 2)),
      
                                      hintText: 'Número do Celular',
                                        hintStyle: TextStyle(fontSize: 14, color: Color.fromARGB(110, 115, 69, 145))
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: size.width * .6,
                           
                            ),
                          ],
                        )),
      
                         Positioned(
                        top: 160,
                        left: 20,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Icon(
                                   Icons.mail_outline,
                                  color: Color.fromARGB(211, 114, 69, 145),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(left: 10),
                                  width: 250,
                                  child:  TextField(
                                    cursorColor: Colors.grey,
                                    style: GoogleFonts.poppins(
                                      color: Colors.black54,
                                    ),
                                    decoration: InputDecoration(
                                       enabledBorder: UnderlineInputBorder(borderSide:BorderSide(style: BorderStyle.solid, color: Color.fromARGB(255, 250, 160, 196),) ),
      
                                        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color:  Color.fromARGB(169, 115, 69, 145), width: 2)),
      
                                      hintText: 'E-mail',
                                        hintStyle: TextStyle(fontSize: 14, color: Color.fromARGB(110, 115, 69, 145))
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: size.width * .6,
                              
                            ),
                          ],
                        )),
      
                            Positioned(
                        top: 200,
                        left: 20,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.key_outlined,
                                  color:Color.fromARGB(211, 114, 69, 145),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(left: 10),
                                  width: 250,
                                  child:  TextField(
                                    cursorColor: Colors.grey,
                                    style: GoogleFonts.poppins(
                                      color: Colors.black54,
                                    ),
                                    decoration: InputDecoration(
                                        enabledBorder: UnderlineInputBorder(borderSide:BorderSide(style: BorderStyle.solid, color:  Color.fromARGB(255, 250, 160, 196)) ),
      
                                         focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color:  Color.fromARGB(169, 115, 69, 145), width: 2)),
      
                                      hintText: 'Senha',
                                        hintStyle: TextStyle(fontSize: 14, color: Color.fromARGB(110, 115, 69, 145))
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: size.width * .6,
                          
                            ),
                          ],
                        )),
      
                            Positioned(
                        top: 240,
                        left: 20,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.key,
                                  color: Color.fromARGB(211, 114, 69, 145),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(left: 10),
                                  width: 250,
                                  child:  TextField(
                                    cursorColor: Colors.grey,
                                    style: GoogleFonts.poppins(
                                      color: Colors.black54,
                                    ),
                                    decoration: InputDecoration(
                                       enabledBorder: UnderlineInputBorder(borderSide:BorderSide(style: BorderStyle.solid, color:  Color.fromARGB(255, 250, 160, 196)) ),
      
                                      focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color:  Color.fromARGB(169, 115, 69, 145), width: 2)),
      
                                      hintText: 'Confirmar Senha',
                                        hintStyle: TextStyle(fontSize: 14, color: Color.fromARGB(110, 115, 69, 145))
                                    ),
                                  ),
                                ),
                              ],
                            ), 
                            SizedBox(
                              width: size.width * .6,
                          
                            ), 
                          ],
                        )),
      
                       Positioned(
                        top: 320,
                        left: 25,
                        
                        child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => Login()));
                        },
                        
                        child: SizedBox(
                          width: size.width * .8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Voltar',
                                style: GoogleFonts.poppins(
                                  color: Color.fromARGB(211, 114, 69, 145),
                                 
                                ),
                              ),
                            ],
                          ),
                        ),)),
                    Positioned(
                      top: 310,
                      right: 20,
                      
                    
                       child: GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => Login()));
                        },
      
                      child: Container(
                        //padding: const EdgeInsets.only(top: 21, left: 9, right: 9, bottom: 21),
                        height: 40,
                        width: 90,
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
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Center(child: Text("Salvar", style: GoogleFonts.poppins( color: Color.fromARGB(255, 255, 255, 255),),)),
                      )
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