import 'package:agenda/ui/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Login',
      home: Welcome(),
      debugShowCheckedModeBanner: false,
     
    );
  }
}
