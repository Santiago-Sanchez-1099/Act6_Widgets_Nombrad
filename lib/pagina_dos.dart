import 'package:flutter/material.dart';
import 'package:act6rutasrenombradas/main.dart';

void main() => runApp(MiRutas());

class PantallaDos extends StatelessWidget {
  const PantallaDos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffFF4040),
        title: const Center(
          child: Text(
            'Pantalla 2 - About Dialog',
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
            child: Widget001(),
          ),
          const SizedBox(height: 20.0),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffFF4040),
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

class Widget001 extends StatelessWidget {
  const Widget001({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xffFF4040),
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AboutDialog(
                    applicationIcon: const FlutterLogo(size: 50.0),
                    applicationName: 'Mi App Flutter',
                    applicationVersion: 'Versión 2.3.0',
                    applicationLegalese: '© 2023 Compañía Ejemplo',
                    children: <Widget>[
                      const SizedBox(height: 10.0),
                      const Text(
                        'Desarrollado con Flutter',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 10.0),
                      const Text(
                          'Una aplicación de demostración para mostrar el funcionamiento del AboutDialog'),
                      const SizedBox(height: 10.0),
                      const Text('Todos los derechos reservados'),
                    ],
                  );
                },
              );
            },
            child: const Text(
              'Mostrar Acerca de',
              style: TextStyle(color: Colors.black, fontSize: 18.0),
            ),
          ),
          const SizedBox(height: 30.0),
          const Icon(Icons.info_outline, size: 50.0, color: Color(0xffFF4040)),
          const SizedBox(height: 10.0),
          const Text(
            'Presiona el botón para ver la información de la app',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}
