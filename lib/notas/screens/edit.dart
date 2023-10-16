import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/note.dart';

class EditScreen extends StatefulWidget {
  final Note? note;
  const EditScreen({super.key, this.note});

  @override
  State<EditScreen> createState() => _EditScreenState();
}
class EditNota extends StatelessWidget {
  const EditNota({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
  return EditScreen();
  }
}

class _EditScreenState extends State<EditScreen> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _contentController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    if (widget.note != null) {
      _titleController = TextEditingController(text: widget.note!.title);
      _contentController = TextEditingController(text: widget.note!.content);
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 238, 243),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 40, 16, 0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  padding: const EdgeInsets.all(0),
                  icon: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 254, 130, 179).withOpacity(.8),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                  ))
            ],
          ),
          Expanded(
              child: ListView(
            children: [
              TextField(
                controller: _titleController,
                style:  GoogleFonts.poppins(color: Color.fromARGB(255, 58, 58, 58), fontSize: 30),
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Título',
                    hintStyle: TextStyle(color: Color.fromARGB(255, 113, 113, 113), fontSize: 30)),
                    cursorColor: const Color.fromARGB(255, 254, 130, 179),
              ),
              TextField(
                controller: _contentController,
                style: GoogleFonts.poppins(
                  color: Color.fromARGB(255, 58, 58, 58),
                ),
                maxLines: null,
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Digite aqui',
                    hintStyle:TextStyle(
                    color: Colors.grey, 

                    ),
                    ),
                    cursorColor: const Color.fromARGB(255, 254, 130, 179),
              ),
            ],
          ))
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(
              context, [_titleController.text, _contentController.text]);
        },
        elevation: 10,
        backgroundColor: Color.fromARGB(255, 254, 130, 179),
        child: const Icon(Icons.save_as_outlined),
      ),
    );
  }
}
