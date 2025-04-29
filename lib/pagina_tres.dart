import 'package:flutter/material.dart';
import 'package:act6rutasrenombradas/main.dart';

void main() => runApp(MiRutas());

class PantallaTres extends StatelessWidget {
  const PantallaTres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffFF6B6B), // Fondo naranja
        title: const Center(
          child: Text(
            'Pantalla 3 - AboutListTile',
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
            child: Widget002(), // Widget AboutListTile
          ),
          const SizedBox(height: 20.0),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffFF6B6B),
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xffFF6B6B),
              ),
              child: Text(
                'Menú Principal',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24.0,
                ),
              ),
            ),
            Widget002(), // AboutListTile en el drawer
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Inicio'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Widget002 extends StatelessWidget {
  const Widget002({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AboutListTile(
      icon: Icon(Icons.info, color: Colors.black),
      applicationIcon: FlutterLogo(size: 50.0),
      applicationName: 'Mi App Flutter',
      applicationVersion: 'Versión 3.0.0',
      applicationLegalese: '© 2023 Todos los derechos reservados',
      aboutBoxChildren: <Widget>[
        SizedBox(height: 10.0),
        Text(
          'Desarrollado con Flutter',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10.0),
        Text('Esta aplicación demuestra el uso de AboutListTile'),
        SizedBox(height: 10.0),
        Text('Más información en flutter.dev'),
      ],
    );
  }
}
