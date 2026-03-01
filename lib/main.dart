import 'package:flutter/material.dart';
import 'package:navegacion/escuelas/escom.dart';
import 'package:navegacion/escuelas/encb.dart';
import 'package:navegacion/escuelas/esiqie.dart';
import 'package:navegacion/escuelas/esime.dart';
import 'package:navegacion/escuelas/esfm.dart';
import 'package:navegacion/escuelas/esit.dart';

void main() {
  runApp(const MyApp());
}

const Color guindaIPN = Color(0xFF6A0032);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: guindaIPN,
        title: const Text(
          'Escuelas IPN - Zacatenco',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          // Imagen de fondo
          Positioned.fill(
            child: Image.network(
              "https://scontent.fmex40-1.fna.fbcdn.net/v/t39.30808-6/529926725_1197031142453163_4329365463405395042_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=b895b5&_nc_ohc=SP2nqzb92ZUQ7kNvwHH9r4v&_nc_oc=Admfpi9QE8ehgXG9XGVj4HdBVTYp87WgdZ_0FHiM6oCBdQqhC9m9uYYcFZXKYvQ4jRU&_nc_zt=23&_nc_ht=scontent.fmex40-1.fna&_nc_gid=Xq-0Wv2STq11pduaPkG95g&_nc_ss=8&oh=00_AfsB_A6tuQupDXMSU3xNF9eLbLBcog-JtVnP9q-Xjhoi8A&oe=69A9D1E0",
              fit: BoxFit.cover,
            ),
          ),

          // Overlay oscuro
          Positioned.fill(
            child: Container(
              color: Colors.black54,
            ),
          ),

          Positioned.fill(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 80),

                  const Text(
                    "Instituto Politécnico Nacional",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 15),

                  const Text(
                    "Conoce las sedes",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 30),

                  botonEscuela(context, "ESCOM"),
                  botonEscuela(context, "ENCB"),
                  botonEscuela(context, "ESIQIE"),
                  botonEscuela(context, "ESIME"),
                  botonEscuela(context, "ESFM"),
                  botonEscuela(context, "ESIT"),

                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget botonEscuela(BuildContext context, String texto) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: SizedBox(
      width: 250,
      height: 50,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: guindaIPN, width: 2),
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed: () {

          Widget? pagina;

          if (texto == "ESCOM") {
            pagina = const Escom();
          } else if (texto == "ENCB") {
            pagina = const Encb();
          }else if (texto == "ESIQIE") {
            pagina = const Esiqie();
          }else if (texto == "ESIME") {
            pagina = const Esime();
          }else if (texto == "ESFM") {
            pagina = const Esfm();
          }else if (texto == "ESIT") {
            pagina = const Esit();
          }else {
            return; // Si aún no tienes creadas las demás pantallas
          }

          Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) => pagina!,
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
              transitionDuration: const Duration(milliseconds: 500),
            ),
          );
        },
        child: Text(
          texto,
          style: const TextStyle(
            color: guindaIPN,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    ),
  );
}