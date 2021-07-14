import 'dart:math';

import 'package:flutter/material.dart';
import 'Resultado.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _exibirResultado() {
    var _opcoes = ["cara", "coroa"];
    var _caraCoroa = Random().nextInt(_opcoes.length);
    var _escolhaApp = _opcoes[_caraCoroa];

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Resultado(
                  resultado: _escolhaApp,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("imagens/logo.png"),
            GestureDetector(
              onTap: _exibirResultado,
              child: Image.asset("imagens/botao_jogar.png"),
            )
          ],
        ),
      ),
    );
  }
}
