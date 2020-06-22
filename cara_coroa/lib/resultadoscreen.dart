import 'package:flutter/material.dart';

class ResultadoScreen extends StatefulWidget {
  final String resultado;//recebe valor enviado da tela HomePage
  ResultadoScreen(this.resultado);
  @override
  _ResultadoScreenState createState() => _ResultadoScreenState();
}

class _ResultadoScreenState extends State<ResultadoScreen> {
  @override
  Widget build(BuildContext context) {
    var caminhoImagem; //aqui é declado uma variável para podermos passar o caminho da imagem 
    if (widget.resultado == "cara") {//se o valor passado for cara, a variábel caminhoImagem vai assumir o caminho para cara
      caminhoImagem = "images/moeda_cara.png";
    } else {//caso contrário, vai ser coroa, e a variábel caminhoImagem vai assumir o caminho para coroa
      caminhoImagem = "images/moeda_coroa.png";
    }
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(caminhoImagem),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset("images/botao_voltar.png"),
            )
          ],
        ),
      ),
    );
  }
}
