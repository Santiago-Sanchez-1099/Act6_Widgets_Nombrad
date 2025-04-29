import 'package:flutter/material.dart';
import 'package:act6rutasrenombradas/main.dart';

void main() => runApp(MiRutas());

class PantallaDiez extends StatelessWidget {
  const PantallaDiez({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff9400D3),
        title: const Center(
          child: Text(
            'Pantalla 10 - AnimatedCrossFade',
            style: TextStyle(
              color: Color(0xff000000),
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20.0),
            const Text(
              'Transición suave entre widgets',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Presiona el botón para alternar entre imágenes',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            const SizedBox(height: 20.0),
            SizedBox(
              height: 350.0,
              child: Widget009(),
            ),
            const SizedBox(height: 20.0),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff9400D3),
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
      ),
    );
  }
}

class Widget009 extends StatefulWidget {
  const Widget009({Key? key}) : super(key: key);

  @override
  State<Widget009> createState() => _Widget009State();
}

class _Widget009State extends State<Widget009> {
  bool _showFirst = true;
  final double _imageSize = 250.0;

  // Using reliable placeholder images from picsum.photos
  final String _firstImageUrl = 'https://picsum.photos/id/100/300/300';
  final String _secondImageUrl = 'https://picsum.photos/id/200/300/300';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 10.0,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: AnimatedCrossFade(
              duration: const Duration(milliseconds: 800),
              firstChild: Image.network(
                _firstImageUrl,
                width: _imageSize,
                height: _imageSize,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return SizedBox(
                    width: _imageSize,
                    height: _imageSize,
                    child: Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!
                            : null,
                      ),
                    ),
                  );
                },
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: _imageSize,
                    height: _imageSize,
                    color: Colors.grey[200],
                    child: const Center(
                      child: Icon(Icons.image, color: Colors.grey),
                    ),
                  );
                },
              ),
              secondChild: Image.network(
                _secondImageUrl,
                width: _imageSize,
                height: _imageSize,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return SizedBox(
                    width: _imageSize,
                    height: _imageSize,
                    child: Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!
                            : null,
                      ),
                    ),
                  );
                },
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: _imageSize,
                    height: _imageSize,
                    color: Colors.grey[200],
                    child: const Center(
                      child: Icon(Icons.image, color: Colors.grey),
                    ),
                  );
                },
              ),
              crossFadeState: _showFirst
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              firstCurve: Curves.easeInOut,
              secondCurve: Curves.easeInOut,
            ),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff9400D3),
            padding:
                const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
          ),
          onPressed: () {
            setState(() {
              _showFirst = !_showFirst;
            });
          },
          child: Text(
            _showFirst ? 'Mostrar Segunda Imagen' : 'Mostrar Primera Imagen',
            style: const TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
