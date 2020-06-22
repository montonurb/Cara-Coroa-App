import 'dart:math';

import 'package:cara_coroa/resultadoscreen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _iniciar(){
    var escolhas = ["cara", "coroa"];//criando uma lista para os resultados
    var numero = Random().nextInt(escolhas.length);//fazendo com que numero receba um número aleatório conforme o tamanho da lista acima
    var resultado = escolhas[numero];//resultado recebe qual item foi "sorteado".
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
