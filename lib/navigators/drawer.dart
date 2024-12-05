
import 'package:evaluacion/main.dart';
import 'package:evaluacion/screens/ejercicio1Screen.dart';
import 'package:evaluacion/screens/ejercicio2Screen.dart';
import 'package:flutter/material.dart';

class Midrawer extends StatelessWidget {
  const Midrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blue, // Color de fondo del DrawerHeader
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment
                  .center, // Centra los elementos verticalmente
              crossAxisAlignment: CrossAxisAlignment
                  .center, // Centra los elementos horizontalmente
              children: [
                const Text(
                  'Drawer Header',
                  style: TextStyle(
                    fontSize: 20, // Tamaño del texto
                    fontWeight: FontWeight.bold, // Texto en negrita
                    color: Colors.white, // Color del texto
                  ),
                ),
                const SizedBox(
                    height: 16), // Espacio entre el texto y la imagen
                ClipOval(
                  // Hace la imagen circular
                  child: Image.network(
                    'https://picsum.photos/250?image=9',
                    width: 80, // Ancho de la imagen
                    height: 80, // Alto de la imagen
                    fit: BoxFit.cover, // Ajusta la imagen al contenedor
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            tileColor: const Color.fromARGB(255, 205, 194, 194),
            title: Text("Evaluación"),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Evaluacion())),
          ),
          ListTile(
            tileColor: const Color.fromARGB(255, 128, 120, 120),
            title: Text("Ejercicio 01"),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => Ejercicio1screen())),
          ),
          ListTile(
            tileColor: const Color.fromARGB(255, 128, 120, 120),
            title: Text("Ejercicio 02"),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Ejercicio2screen())),
          )
            
        ],
      ),
    );
  }
}
