import 'package:flutter/material.dart';
import 'package:act6rutasrenombradas/main.dart';

void main() => runApp(MiRutas());

class PantallaSiete extends StatelessWidget {
  const PantallaSiete({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffEE82EE),
        title: const Center(
          child: Text(
            'Pantalla 7 - AnimatedAlign',
            style: TextStyle(
              color: Color(0xff000000),
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 30.0),
          const Text(
            'Toque en el área gris para animar',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20.0),
          Expanded(
            child: Widget006(), // Widget AnimatedAlign
          ),
          const SizedBox(height: 20.0),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffEE82EE),
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

class Widget006 extends StatefulWidget {
  const Widget006({Key? key}) : super(key: key);

  @override
  State<Widget006> createState() => _Widget006State();
}

class _Widget006State extends State<Widget006> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 6.0,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: AnimatedAlign(
          alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
          duration: const Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          child: const Padding(
            padding: EdgeInsets.all(20.0),
            child: FlutterLogo(size: 60.0),
          ),
        ),
      ),
    );
  }
}
