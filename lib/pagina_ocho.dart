import 'package:flutter/material.dart';
import 'package:act6rutasrenombradas/main.dart';
import 'dart:math' as math;

void main() => runApp(MiRutas());

class PantallaOcho extends StatelessWidget {
  const PantallaOcho({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff9370DB),
        title: const Center(
          child: Text(
            'Pantalla 8 - AnimatedBuilder',
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
            'Rotación Continua con AnimatedBuilder',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10.0),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'El logo gira continuamente usando un AnimationController',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          const SizedBox(height: 30.0),
          Expanded(
            child: Widget007(), // Widget AnimatedBuilder
          ),
          const SizedBox(height: 20.0),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff9370DB),
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

class Widget007 extends StatefulWidget {
  const Widget007({Key? key}) : super(key: key);

  @override
  State<Widget007> createState() => _Widget007State();
}

class _Widget007State extends State<Widget007> with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat();

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.linear,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedBuilder(
            animation: _animation,
            child: const FlutterLogo(
              size: 120.0,
            ),
            builder: (BuildContext context, Widget? child) {
              return Transform.rotate(
                angle: _animation.value * 2.0 * math.pi,
                child: child,
              );
            },
          ),
          const SizedBox(height: 30.0),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff9370DB),
            ),
            onPressed: () {
              if (_controller.isAnimating) {
                _controller.stop();
              } else {
                _controller.repeat();
              }
              setState(() {});
            },
            child: Text(
              _controller.isAnimating ? 'Detener' : 'Reanudar',
              style: const TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
