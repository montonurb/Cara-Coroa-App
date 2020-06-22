import 'dart:math';

import 'package:cara_coroa/resultadoscreen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _iniciar(){
    var escolhas = ["cara", "coroa"];
    var numero = Random().nextInt(escolhas.length);
    var resultado = escolhas[numero];
    Navigator.push(context, MaterialPageRoute(builder: (context) => ResultadoScreen(resultado)));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("images/logo.png"),
            GestureDetector(
              onTap: _iniciar,
              child: Image.asset("images/botao_jogar.png"),
            )
          ],
        ),
      ),
    );
  }
}
