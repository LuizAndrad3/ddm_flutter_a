import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() quandoSelecionado;

  Resposta(this.texto, this.quandoSelecionado, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0), 
      child: SizedBox(
        width: 200,
        height: 50,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: const Color.fromARGB(255, 162, 213, 255),
            onPrimary: Colors.white,
            shadowColor: const Color.fromARGB(255, 0, 0, 0),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: quandoSelecionado,
          child: Text(texto),
        ),
      ),
    );
  }
}



