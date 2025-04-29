import 'package:flutter/material.dart';
import 'package:act6rutasrenombradas/main.dart';

void main() => runApp(MiRutas());

class PantallaNueve extends StatelessWidget {
  const PantallaNueve({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff8A2BE2),
        title: const Center(
          child: Text(
            'Pantalla 9 - AnimatedContainer',
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
          const Text(
            'Toque el contenedor para animar',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10.0),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'El contenedor cambia de tamaño, color y alineación',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          const SizedBox(height: 30.0),
          Expanded(
            child: Widget008(), // Widget AnimatedContainer
          ),
          const SizedBox(height: 20.0),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff8A2BE2),
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 15.0),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Pantalla inicial',
                style: TextStyle(color: Colors.black, fontSize: 16.0),
              ),
            ),
          ),
          const SizedBox(height: 30.0),
        ],
      ),
    );
  }
}

class Widget008 extends StatefulWidget {
  const Widget008({Key? key}) : super(key: key);

  @override
  State<Widget008> createState() => _Widget008State();
}

class _Widget008State extends State<Widget008> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: AnimatedContainer(
          width: selected ? 250.0 : 150.0,
          height: selected ? 150.0 : 250.0,
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut,
          decoration: BoxDecoration(
            color: selected ? Colors.blueGrey : const Color(0xff8A2BE2),
            borderRadius: BorderRadius.circular(selected ? 30.0 : 10.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 10.0,
                offset: const Offset(0, 5),
              ),
            ],
            border: Border.all(
              color: Colors.black,
              width: 2.0,
            ),
          ),
          alignment: selected ? Alignment.center : Alignment.topCenter,
          child: AnimatedOpacity(
            duration: const Duration(milliseconds: 500),
            opacity: selected ? 1.0 : 0.8,
            child: const FlutterLogo(
              size: 75.0,
              style: FlutterLogoStyle.horizontal,
            ),
          ),
        ),
      ),
    );
  }
}
