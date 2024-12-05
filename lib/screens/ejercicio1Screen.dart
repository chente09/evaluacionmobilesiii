import 'package:evaluacion/navigators/drawer.dart';
import 'package:flutter/material.dart';

class Ejercicio1screen extends StatelessWidget {
  const Ejercicio1screen({super.key});

  double altura(double hi, double t, double a) {
    return hi + (0.5 * a * t * t);
  }

  String lanzamiento(double altura) {
    if (altura >= 1000) {
      return "El lanzamiento fue exitoso.";
    } else {
      return "El lanzamiento ha fallado.";
    }
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController hiController = TextEditingController();
    final TextEditingController tiempoController = TextEditingController();

    double? resultadoAltura;
    String? mensajeResultado;

    return Scaffold(
      drawer: const Midrawer(),
      appBar: AppBar(
        title: const Text('Ejercicio 1'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Altura inicial:",
              style: TextStyle(fontSize: 18),
            ),
            TextField(
              controller: hiController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Ingrese la altura inicial en metros",
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "Tiempo:",
              style: TextStyle(fontSize: 18),
            ),
            TextField(
              controller: tiempoController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Ingrese el tiempo en segundos",
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  final double hi = double.tryParse(hiController.text) ?? 0.0;
                  final double tiempo = double.tryParse(tiempoController.text) ?? 0.0;
                  const double aceleracion = 20.0;

                  resultadoAltura = altura(hi, tiempo, aceleracion);
                  mensajeResultado = lanzamiento(resultadoAltura!);

                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("Resultado"),
                        content: Text(
                          "Altura alcanzada: ${resultadoAltura!.toStringAsFixed(2)} m\n$mensajeResultado",
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
