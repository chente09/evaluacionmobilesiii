import 'package:evaluacion/navigators/drawer.dart';
import 'package:flutter/material.dart';

class Ejercicio2screen extends StatelessWidget {
  const Ejercicio2screen({super.key});

  double calcularDistancia(double w, double t) {
    return w * t;
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController velocidadController = TextEditingController();
    const double tiempo = 25.0; // Tiempo fijo en segundos
    double? resultadoDistancia;

    return Scaffold(
      drawer: const Midrawer(),
      appBar: AppBar(
        title: const Text('Ejercicio 2'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Velocidad angular (w) en rad/s:",
              style: TextStyle(fontSize: 18),
            ),
            TextField(
              controller: velocidadController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Ingrese la velocidad angular",
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Convertir la entrada a un valor numérico
                  final double velocidadAngular =
                      double.tryParse(velocidadController.text) ?? 0.0;

                  // Calcular la distancia recorrida
                  resultadoDistancia =
                      calcularDistancia(velocidadAngular, tiempo);

                  // Mostrar resultado en un dialog
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("Resultado"),
                        content: Text(
                          "Distancia recorrida (θ): ${resultadoDistancia!.toStringAsFixed(2)} rad",
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text("Cerrar"),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const Text("Calcular"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
