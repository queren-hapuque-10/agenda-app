import 'package:flutter/material.dart';

class Usuarios extends StatelessWidget {
  const Usuarios({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 255, 133, 182),
            Color.fromARGB(211, 114, 69, 145),
          ],
        ),
      ),
    ));
  }
}
