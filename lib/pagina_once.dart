import 'package:flutter/material.dart';
import 'package:act6rutasrenombradas/main.dart';

void main() => runApp(MiRutas());

class PantallaOnce extends StatelessWidget {
  const PantallaOnce({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff800080),
        title: const Center(
          child: Text(
            'Pantalla 11 - AnimatedTextStyle',
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
            'Animación de Estilo de Texto',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10.0),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Presiona el botón para animar el tamaño y color del texto',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          const SizedBox(height: 40.0),
          Expanded(
            child: Center(
              child: Widget010(), // Widget AnimatedDefaultTextStyle
            ),
          ),
          const SizedBox(height: 20.0),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff800080),
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

class Widget010 extends StatefulWidget {
  const Widget010({Key? key}) : super(key: key);

  @override
  State<Widget010> createState() => _Widget010State();
}

class _Widget010State extends State<Widget010> {
  bool _firstStyle = true;
  final List<Color> _colors = [
    const Color(0xff800080), // Naranja consistente
    Colors.blue,
    Colors.purple,
    Colors.green
  ];
  int _colorIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 500),
          style: TextStyle(
            fontSize: _firstStyle ? 40.0 : 60.0,
            color: _colors[_colorIndex],
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 5.0,
                offset: const Offset(2, 2),
              ),
            ],
          ),
          textAlign: TextAlign.center,
          child: const Text('Flutter es Increíble!'),
        ),
        const SizedBox(height: 40.0),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff800080),
            padding:
                const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
          ),
          onPressed: () {
            setState(() {
              _firstStyle = !_firstStyle;
              _colorIndex = (_colorIndex + 1) % _colors.length;
            });
          },
          child: Text(
            _firstStyle ? 'Aumentar Tamaño' : 'Reducir Tamaño',
            style: const TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
