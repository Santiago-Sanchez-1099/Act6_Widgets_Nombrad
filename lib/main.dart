import 'package:flutter/material.dart';
import 'package:act6rutasrenombradas/pagina_inicial.dart';
import 'package:act6rutasrenombradas/pagina_dos.dart';
import 'package:act6rutasrenombradas/pagina_tres.dart';
import 'package:act6rutasrenombradas/pagina_cuatro.dart';
import 'package:act6rutasrenombradas/pagina_cinco.dart';
import 'package:act6rutasrenombradas/pagina_seis.dart';
import 'package:act6rutasrenombradas/pagina_siete.dart';
import 'package:act6rutasrenombradas/pagina_ocho.dart';
import 'package:act6rutasrenombradas/pagina_nueve.dart';
import 'package:act6rutasrenombradas/pagina_diez.dart';
import 'package:act6rutasrenombradas/pagina_once.dart';

void main() => runApp(MiRutas());

class MiRutas extends StatelessWidget {
  const MiRutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre páginas',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const PantallaUno(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/pantalla2': (context) => const PantallaDos(),
        '/pantalla3': (context) => const PantallaTres(),
        '/pantalla4': (context) => const PantallaCuatro(),
        '/pantalla5': (context) => const PantallaCinco(),
        '/pantalla6': (context) => const PantallaSeis(),
        '/pantalla7': (context) => const PantallaSiete(),
        '/pantalla8': (context) => const PantallaOcho(),
        '/pantalla9': (context) => const PantallaNueve(),
        '/pantalla10': (context) => const PantallaDiez(),
        '/pantalla11': (context) => const PantallaOnce(),
      },
    );
  }
}
