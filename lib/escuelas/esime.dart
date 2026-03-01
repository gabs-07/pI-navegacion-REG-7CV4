import 'package:flutter/material.dart';
import 'package:navegacion/main.dart';

class Esime extends StatelessWidget {
  const Esime({super.key});

  // Lista de carreras de ESIME
  final List<String> carreras = const [
    'Ingeniería Mecánica',
    'Ingeniería Eléctrica',
    'Ingeniería Electrónica',
    'Ingeniería en Control y Automatización',
    'Ingeniería Fotónica',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF6A0032),
        title: const Text(
          'IPN - ESIME',
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
              "https://mexicogob.com/escuelas/wp-content/uploads/2022/03/AF1QipOeHjgulj_xOV00lwFztHR113d1Bc96a_Hjpmlxw408-h544-k-no.jpg",
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
                      "ESIME - Escuela Superior de Ingeniería Mecánica y Eléctrica",
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
                      "La ESIME Unidad Zacatenco del Instituto Politécnico Nacional (IPN) es una institución líder en México, fundada en 1936, enfocada en la formación de ingenieros de excelencia en áreas como mecánica, eléctrica, electrónica, automotriz, control y automatización, y fotónica. Ofrece programas de nivel superior y posgrado con alto perfil académico, contribuyendo al desarrollo tecnológico y científico.",
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
                                      CarreraDetalleEsime(nombre: carrera),
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
class CarreraDetalleEsime extends StatelessWidget {
  final String nombre;
  const CarreraDetalleEsime({super.key, required this.nombre});

  String getDescripcion() {
    switch (nombre) {
      case 'Ingeniería Mecánica':
        return 'Formar ingenieros capaces de diseñar, analizar y optimizar sistemas mecánicos aplicando principios de mecánica, termodinámica y materiales.';
      case 'Ingeniería Eléctrica':
        return 'Formar expertos en sistemas eléctricos y electrónicos, generación, transmisión y distribución de energía eléctrica, con conocimientos en control y automatización.';
      case 'Ingeniería Electrónica':
        return 'Capacitar profesionales en el diseño y desarrollo de sistemas electrónicos, circuitos integrados, instrumentación y telecomunicaciones.';
      case 'Ingeniería en Control y Automatización':
        return 'Formar especialistas en el diseño de sistemas automáticos de control, robótica y procesos industriales, aplicando metodologías avanzadas de ingeniería.';
      case 'Ingeniería Fotónica':
        return 'Capacitar en el uso de la luz y sus aplicaciones en comunicación, sensores, óptica y tecnología láser para el desarrollo científico y tecnológico.';
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
              "https://mexicogob.com/escuelas/wp-content/uploads/2022/03/AF1QipOeHjgulj_xOV00lwFztHR113d1Bc96a_Hjpmlxw408-h544-k-no.jpg",
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