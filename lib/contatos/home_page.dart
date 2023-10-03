import 'package:agenda/contatos/contact.dart';
import 'package:agenda/notas/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
              //child: Text("Contatos", style: TextStyle(fontSize: 30, color: Colors.pink)),
            ),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        width: 2, color: Color.fromARGB(255, 255, 130, 201)),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  hintText: 'Nome',
                  enabledBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                        width: 2,
                        color: Color.fromARGB(255, 174, 122, 220),
                      ))),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: contactController,
              keyboardType: TextInputType.number,
              maxLength: 11,
              decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        width: 2, color: Color.fromARGB(255, 255, 130, 201)),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  hintText: 'Número',
                  enabledBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      borderSide: BorderSide(
                          color: Color.fromARGB(255, 174, 122, 220),
                          width: 2))),
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
                          Color.fromARGB(255, 228, 133, 187)),
                    ),
                    onPressed: () {
                      //
                      String name = nameController.text.trim();
                      String contact = contactController.text.trim();
                      if (name.isNotEmpty && contact.isNotEmpty) {
                        setState(() {
                          nameController.text = '';
                          contactController.text = '';
                          contacts.add(Contact(name: name, contact: contact));
                        });
                      }

                      //
                    },
                    child: const Text('Salvar')),
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 149, 115, 244),
                      ),
                    ),
                    onPressed: () {
                      //
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
                      
                      
                      //
                    },
                    child: const Text('Editar'),),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Todos os Contatos',
                  style: GoogleFonts.poppins(
                    fontSize: 30,
                    color: Color.fromARGB(255, 255, 59, 114),
                    fontWeight: FontWeight.w300,
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
              ? const Color.fromARGB(255, 149, 115, 244)
              : Color.fromARGB(255, 228, 133, 187),
          foregroundColor: Colors.white,
          child: Text(
            contacts[index].name[0],
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              contacts[index].name,
              style: const TextStyle(fontWeight: FontWeight.bold),
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
                    color: Color.fromARGB(255, 77, 213, 129),
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
                    color: Color.fromARGB(255, 220, 117, 117),
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
      title: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
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
