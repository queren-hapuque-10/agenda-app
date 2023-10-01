import 'package:agenda/contatos/contact.dart';
import 'package:flutter/material.dart';

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
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Lista de Contatos'),
        backgroundColor:Color.fromARGB(255, 145, 112, 173),
      ),
      
      body: Padding(


        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 10,),
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
              focusedBorder: OutlineInputBorder(
               borderSide: BorderSide(
                width: 2,
                color: Color.fromARGB(255, 190, 147, 255)),
                borderRadius: BorderRadius.all(Radius.circular(15)),
                
               ),
                 
                  hintText: 'Nome',
                  border: OutlineInputBorder(
                   // borderSide: BorderSide(),
                      borderRadius: BorderRadius.all( 
                    Radius.circular(15),
                  ))), 
            ),
            const SizedBox(height: 10,),
            TextField(
              controller: contactController,
              keyboardType: TextInputType.number,
              maxLength: 11,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
            
              focusedBorder: OutlineInputBorder(
               borderSide: BorderSide(
                width: 2,
                color: Color.fromARGB(255, 190, 147, 255)),
                borderRadius: BorderRadius.all(Radius.circular(15)),
               ),
                  hintText: 'Número',
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ))),
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 82, 62, 160)),
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
                    backgroundColor: MaterialStatePropertyAll( Color.fromARGB(211, 114, 69, 145),),
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
                    child: const Text('Editar')),
              ],
            ),
            const SizedBox(height: 20),
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
          backgroundColor:
              index % 2 == 0 ? Colors.deepPurpleAccent : Colors.purple,
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
                  child: const Icon(Icons.edit, color: Color.fromARGB(255, 77, 213, 129),)),
              InkWell(
                  onTap: (() {
                    //
                    setState(() {
                      contacts.removeAt(index);
                    });
                    //
                  }),
                  child: const Icon(Icons.delete, color: Color.fromARGB(255, 236, 91, 91),)),
            ],
          ),
        ),
      ),
    );
  }
}