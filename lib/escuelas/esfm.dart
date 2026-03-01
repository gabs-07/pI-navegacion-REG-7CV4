import 'package:flutter/material.dart';
import 'package:navegacion/main.dart';

class Esfm extends StatelessWidget {
  const Esfm({super.key});

  // Lista de carreras de ESFM
  final List<String> carreras = const [
    'Física',
    'Matemáticas',
    'Ingeniería Matemática',
    'Matemática Algorítmica',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF6A0032),
        title: const Text(
          'IPN - ESFM',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Stack(
        children: [
          // Imagen de fondo
          Positioned.fill(
            child: Image.network(
              "https://esfm.ipn.mx/assets/files/esfm/img/instalaciones/9.jpg",
              fit: BoxFit.cover,
            ),
          ),

          // Overlay oscuro
          Positioned.fill(
            child: Container(
              color: Colors.black54,
            ),
          ),

          // Contenido con scroll
          Positioned.fill(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.0),
                    child: Text(
                      "ESFM - Escuela Superior de Física y Matemáticas",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: const Text(
                      "La Escuela Superior de Física y Matemáticas (ESFM) del Instituto Politécnico Nacional (IPN), creada en 1961 en Ciudad de México, es una institución pública de alto nivel dedicada a la enseñanza e investigación en ciencias básicas. Forma profesionales en Física y Matemáticas, Ingeniería Matemática y Matemática Algorítmica, destacando por su rigor académico y contribución al desarrollo científico.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Lista de carreras con botones
                  ...carreras.map((carrera) => Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 6.0, horizontal: 24.0),
                        child: SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(
                                  color: Color(0xFF6A0032), width: 2),
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      CarreraDetalleEsfm(nombre: carrera),
                                ),
                              );
                            },
                            child: Text(
                              carrera,
                              style: const TextStyle(
                                color: Color(0xFF6A0032),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      )),
                  const SizedBox(height: 20),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF6A0032),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text("Ir a Home"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Pantalla de detalle de carrera
class CarreraDetalleEsfm extends StatelessWidget {
  final String nombre;
  const CarreraDetalleEsfm({super.key, required this.nombre});

  String getDescripcion() {
    switch (nombre) {
      case 'Física':
        return 'Formar profesionales capaces de analizar fenómenos físicos, realizar experimentación y desarrollar investigación en áreas fundamentales y aplicadas.';
      case 'Matemáticas':
        return 'Capacitar expertos en teorías matemáticas, resolución de problemas complejos y aplicaciones en ciencias y tecnología.';
      case 'Ingeniería Matemática':
        return 'Preparar ingenieros con herramientas matemáticas avanzadas para modelado, simulación y optimización de sistemas reales.';
      case 'Matemática Algorítmica':
        return 'Formar especialistas en algoritmos y programación matemática para resolver problemas científicos e industriales.';
      default:
        return 'Sin descripción disponible.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          nombre,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color(0xFF6A0032),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              "https://esfm.ipn.mx/assets/files/esfm/img/instalaciones/9.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              color: Colors.black54,
            ),
          ),
          Center(
            child: Container(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    nombre,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    getDescripcion(),
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton.icon(
                    icon: const Icon(Icons.arrow_back),
                    label: const Text('Regresar'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF6A0032),
                      foregroundColor: Colors.white,
                      textStyle: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}