import 'package:evaluacion/navigators/drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Evaluacion());
}

class Evaluacion extends StatelessWidget {
  const Evaluacion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Cuerpo(),
    );
  }
}

class Cuerpo extends StatelessWidget {
  const Cuerpo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        title: const Text('Evaluación'),
      ),
      drawer: Midrawer(),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              "https://revistabyte.es/wp-content/uploads/2016/10/ball-63527-1024x724.jpg.webp",
              fit: BoxFit.cover,
            ),
          ),
          const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Nombre: Vicente Nenger",
                  style: TextStyle(
                    backgroundColor: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Usuario de GitHub: chente09",
                  style: TextStyle(
                    backgroundColor: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}