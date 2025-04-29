import 'package:flutter/material.dart';
import 'package:act6rutasrenombradas/main.dart';

void main() => runApp(MiRutas());

class PantallaCinco extends StatelessWidget {
  const PantallaCinco({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffFF00FF),
        title: const Center(
          child: Text(
            'Pantalla 5 - AlertDialog',
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
                const Icon(
                  Icons.warning_amber_rounded,
                  size: 60.0,
                  color: Color(0xffFF00FF),
                ),
                const SizedBox(height: 20.0),
                const Text(
                  'Demostración de AlertDialog',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30.0),
                Widget004(), // Widget AlertDialog
              ],
            ),
          ),
          const SizedBox(height: 20.0),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffFF00FF),
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

class Widget004 extends StatefulWidget {
  const Widget004({Key? key}) : super(key: key);

  @override
  State<Widget004> createState() => _Widget004State();
}

class _Widget004State extends State<Widget004> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xffFF00FF),
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
      ),
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              icon: const Icon(Icons.warning, size: 40.0),
              title: const Text(
                '¡Atención!',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              content: const Text(
                'Esta es una demostración de AlertDialog en Flutter. '
                'Puedes usar este componente para mostrar alertas importantes al usuario.',
              ),
              actionsAlignment: MainAxisAlignment.spaceAround,
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Has cerrado el diálogo'),
                        duration: Duration(seconds: 1),
                      ),
                    );
                  },
                  child: const Text(
                    'Cerrar',
                    style: TextStyle(color: Color(0xffFF00FF)),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Has aceptado la acción'),
                        duration: Duration(seconds: 1),
                      ),
                    );
                  },
                  child: const Text(
                    'Aceptar',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
            );
          },
        );
      },
      child: const Text(
        'Mostrar Alerta',
        style: TextStyle(fontSize: 18.0, color: Colors.black),
      ),
    );
  }
}
