import 'package:flutter/material.dart';
import 'package:act6rutasrenombradas/main.dart';

void main() => runApp(MiRutas());

class PantallaCuatro extends StatelessWidget {
  const PantallaCuatro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffFF1493), // Fondo naranja
        title: const Center(
          child: Text(
            'Pantalla 4 - AbsorbPointer',
            style: TextStyle(
              color: Color(0xff000000),
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 40.0),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Demostración de AbsorbPointer',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30.0),
                Widget003(), // Widget AbsorbPointer
                const SizedBox(height: 20.0),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'El botón vertical (azul) no responde a toques porque está envuelto en AbsorbPointer',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20.0),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffFF1493),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Pantalla inicial',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          const SizedBox(height: 20.0),
        ],
      ),
    );
  }
}

class Widget003 extends StatelessWidget {
  const Widget003({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          SizedBox(
            width: 200.0,
            height: 100.0,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffFF1493), // Naranja consistente
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Botón horizontal presionado'),
                    duration: Duration(seconds: 1),
                  ),
                );
              },
              child: const Text('Botón Activo'),
            ),
          ),
          SizedBox(
            width: 100.0,
            height: 200.0,
            child: AbsorbPointer(
              absorbing: true, // Explicitamente true
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade200,
                ),
                onPressed: () {
                  // Esta función nunca se ejecutará
                },
                child: const Text('Inactivo'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
