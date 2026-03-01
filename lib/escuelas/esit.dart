import 'package:flutter/material.dart';
import 'package:navegacion/main.dart';

class Esit extends StatelessWidget {
  const Esit({super.key});

  // Lista de carreras de ESIT
  final List<String> carreras = const [
    'Ingeniería Textil',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF6A0032),
        title: const Text(
          'IPN - ESIT',
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
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4BJmOfU3Zl6pSTFBopnxVTq9YHAt8oHyT5Q&s",
              fit: BoxFit.cover,
            ),
          ),

          // Overlay oscuro
          Positioned.fill(
            child: Container(
              color: Colors.black54,
            ),
          ),

          // Contenido con scroll centrado
          Positioned.fill(
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 40),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.0),
                      child: Text(
                        "ESIT - Escuela Superior de Ingeniería Textil",
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
                        "La Escuela Superior de Ingeniería Textil (ESIT) del IPN, ubicada en Zacatenco, es una institución pública líder en México dedicada a la formación de ingenieros textiles de excelencia. Ofrece la carrera de Ingeniería Textil con especialidades en hilados, tejidos, acabados y confección, enfocándose en la innovación tecnológica, sustentabilidad y competitividad de la industria textil nacional.",
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
                            width: 300,
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
                                        CarreraDetalleEsit(nombre: carrera),
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
                        minimumSize: const Size(150, 45),
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
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Pantalla de detalle de carrera
class CarreraDetalleEsit extends StatelessWidget {
  final String nombre;
  const CarreraDetalleEsit({super.key, required this.nombre});

  String getDescripcion() {
    switch (nombre) {
      case 'Ingeniería Textil':
        return 'Formar profesionales capaces de diseñar, producir y gestionar procesos textiles innovadores, aplicando tecnología avanzada, sustentabilidad y eficiencia en la industria textil nacional e internacional.';
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
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4BJmOfU3Zl6pSTFBopnxVTq9YHAt8oHyT5Q&s",
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              color: Colors.black54,
            ),
          ),
          Center(
            child: Padding(
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
                      minimumSize: const Size(150, 45),
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