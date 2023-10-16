import 'package:agenda/contatos/contact.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // o campo de texto atualiza o valor e o controlador notifica seus ouvintes. 
  TextEditingController nameController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  List<Contact> contacts = List.empty(growable: true);

  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 238, 243),
      appBar: _buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
          
            ),
            TextField(
              controller: nameController,
              decoration:  InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                    width: 2, color: Color.fromARGB(255, 254, 130, 179)),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  hintText: 'Ex: Maria José',
                  hintStyle: GoogleFonts.poppins( fontSize: 12),
                 hoverColor:Color.fromARGB(255, 255, 255, 255),

                  enabledBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                        width: 2,
                        color: Color.fromARGB(211, 114, 69, 145),
                        
                      ))),
                      cursorColor: const Color.fromARGB(255, 254, 130, 179),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: contactController,
              keyboardType: TextInputType.number,
              maxLength: 16,
              decoration:  InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        width: 2, color:Color.fromARGB(255, 254, 130, 179)),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  hintText: '(00) 0 0000-0000',
                  hintStyle: GoogleFonts.poppins( fontSize: 12),
                 hoverColor:Color.fromARGB(255, 255, 255, 255),

                  enabledBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      borderSide: BorderSide(
                          color: Color.fromARGB(211, 114, 69, 145),
                          width: 2))),
                          cursorColor: const Color.fromARGB(255, 254, 130, 179),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 254, 130, 179)),
                    ),
                    onPressed: () {
                     
                      String name = nameController.text.trim();
                      String contact = contactController.text.trim();
                      if (name.isNotEmpty && contact.isNotEmpty) {
                        setState(() {
                          nameController.text = '';
                          contactController.text = '';
                          contacts.add(Contact(name: name, contact: contact));
                        });
                      }

                   
                    },
                    child: Text('Salvar', style: GoogleFonts.poppins(),)),
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(211, 114, 69, 145),
                      ),
                    ),

                    onPressed: () {
                    
                      String name = nameController.text.trim();
                      String contact = contactController.text.trim();
                      if (name.isNotEmpty && contact.isNotEmpty) {
                        setState(() {
                          nameController.text = '';
                          contactController.text = '';
                          contacts[selectedIndex].name = name;
                          contacts[selectedIndex].contact = contact;
                          selectedIndex = -1;
                        });
                      }
                      
                    },
                    child:  Text('Editar', style: GoogleFonts.poppins(),),),
              ],
            ),
            Row(
             mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Contatos',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: Color.fromARGB(255, 254, 130, 179),
                    fontWeight: FontWeight.w400,
                    height: 3,

                  
                  ),
                ),
              ],
              
            ),
            const SizedBox(
              height: 20,
            ),
            contacts.isEmpty
                ? const Text(
                    '...',
                    style: TextStyle(fontSize: 10),
                  )
                : Expanded(
                    child: ListView.builder(
                      itemCount: contacts.length,
                      itemBuilder: (context, index) => getRow(index),
                    ),
                  )
          ],
        ),
      ),
    );
  }

  Widget getRow(int index) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: index % 2 == 0
              ? Color.fromARGB(211, 114, 69, 145)
              : Color.fromARGB(255, 254, 130, 179),
          foregroundColor: Colors.white,
          child: Text(
            contacts[index].name[0],
            style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              contacts[index].name,
              style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
            ),
            Text(contacts[index].contact),
          ],
        ),
        trailing: SizedBox(
          width: 70,
          child: Row(
            children: [
              InkWell(
                  onTap: () {
                    //
                    nameController.text = contacts[index].name;
                    contactController.text = contacts[index].contact;
                    setState(() {
                      selectedIndex = index;
                    });
                    //
                  },
                  child: const Icon(
                    Icons.edit,
                    color: Color.fromARGB(211, 114, 69, 145),
                  )),
              InkWell(
                  onTap: (() {
                    //
                    setState(() {
                      contacts.removeAt(index);
                    });
                    //
                  }),
                  child: const Icon(
                    Icons.delete,
                    color:Color.fromARGB(255, 254, 130, 179),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  _buildAppBar() {
    return AppBar(

      titleTextStyle: TextStyle(),
      backgroundColor: Color.fromARGB(255, 245, 238, 243),
      elevation: 0,
      title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text("Lista de Contatos", 
        style: GoogleFonts.poppins(
          fontSize: 25,
          fontWeight: FontWeight.w400,
          color:Color.fromARGB(255, 254, 130, 179),
          height: 3
        ),
        ),
       
        Container(
          height: 50,
          width: 50,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset('assets/logo-a.png'),
          ),
        ),
      ]),
    );
  }
}
