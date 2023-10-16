import 'package:flutter/material.dart';

class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Estudar pra Prova', isDone: true,),
       ToDo(id: '02', todoText: 'Ler Livro', isDone: true,),
        ToDo(id: '03', todoText: 'Ir ao curso', isDone: true,),
     

    ];
    
  }
}