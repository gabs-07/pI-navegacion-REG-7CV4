import 'package:flutter/material.dart';
import 'package:navegacion/main.dart';

class Esiqie extends StatelessWidget {
  const Esiqie({super.key});

  // Lista de carreras de ESIQIE
  final List<String> carreras = const [
    'Ingeniería Química',
    'Ingeniería en Petroquímica',
    'Ingeniería Metalúrgica',
    'Ingeniería en Procesos Industriales',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF6A0032),
        title: const Text(
          'IPN - ESIQIE',
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
              "https://lh5.googleusercontent.com/p/AF1QipOw_aI_-3Z_GEHwoKMLBDJP_L7jt9w2KCmuHKTr=w1080-k-no",
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
                      "ESIQIE - Escuela Superior de Ingeniería Química e Industrias Extractivas",
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
                      "La Escuela Superior de Ingeniería Química e Industrias Extractivas (ESIQIE), perteneciente al Instituto Politécnico Nacional (IPN), es una institución líder en México enfocada en formar ingenieros de excelencia en áreas químicas, petroleras y metalúrgicas. Ubicada en Zacatenco, ofrece programas académicos de vanguardia orientados a la sostenibilidad, la investigación y la industria.",
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
                                      CarreraDetalleEsiqie(nombre: carrera),
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
class CarreraDetalleEsiqie extends StatelessWidget {
  final String nombre;
  const CarreraDetalleEsiqie({super.key, required this.nombre});

  String getDescripcion() {
    switch (nombre) {
      case 'Ingeniería Química':
        return 'Formar ingenieros capaces de diseñar y optimizar procesos químicos, aplicando principios de química, termodinámica y control de calidad industrial.';
      case 'Ingeniería en Petroquímica':
        return 'Capacitar profesionales en procesos de refinación y transformación de hidrocarburos, así como en desarrollo de productos petroquímicos.';
      case 'Ingeniería Metalúrgica':
        return 'Formar expertos en extracción, transformación y análisis de metales y materiales industriales, aplicando métodos innovadores y sostenibles.';
      case 'Ingeniería en Procesos Industriales':
        return 'Preparar ingenieros para optimizar sistemas de producción y procesos industriales, integrando conocimientos en química, energía y automatización.';
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
              "https://lh5.googleusercontent.com/p/AF1QipOw_aI_-3Z_GEHwoKMLBDJP_L7jt9w2KCmuHKTr=w1080-k-no",
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