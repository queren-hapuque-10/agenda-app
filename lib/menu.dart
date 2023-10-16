import 'package:agenda/contatos/home_page.dart';
import 'package:agenda/notas/screens/home.dart';
import 'package:agenda/perfil/perfil.dart';
import 'package:agenda/tarefas/screens/tarefa.dart';
import 'package:agenda/ui/welcome.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class Agenda extends StatelessWidget {
  const Agenda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Menu();
  }
}

class _MenuState extends State<Menu> {

  int _opcaoSelecionada = 0;

  PaginaSelecionada(int index) {
    switch (index) {
      case 0:
        return Perfil();
      case 1:
        return Tarefa();
      case 2:
        return HomePage();

        case 3:
        return HomeScreen();

        
            }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: PaginaSelecionada(_opcaoSelecionada),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _opcaoSelecionada,
          fixedColor:Color.fromARGB(255, 254, 130, 179),
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          showUnselectedLabels: true,
          unselectedItemColor:Color.fromARGB(211, 114, 69, 145),
          
         
          onTap: (opcao) {
         //   print("clicou $opcao");

            setState(() {
              _opcaoSelecionada = opcao;
            });
          },
          
          items: [
             BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined, ),
              label: 'Perfil',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.edit_calendar_outlined, ),
              label: 'Tarefas',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.perm_contact_cal_outlined,),
              label: 'Contatos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.note_alt_outlined,),
              label: 'Notas',
            ),
            
          ]
    ),
    
    );
  }


}
