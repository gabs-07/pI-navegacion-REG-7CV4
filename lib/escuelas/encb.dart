import 'package:flutter/material.dart';
import 'package:navegacion/main.dart';

class Encb extends StatelessWidget {
  const Encb({super.key});

  // Lista de carreras de ENCB
  final List<String> carreras = const [
    'Ingeniería en Biotecnología',
    'Ingeniería en Bioquímica',
    'Licenciatura en Biología',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF6A0032),
        title: const Text(
          'IPN - ENCB',
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
              "https://scontent.fmex40-1.fna.fbcdn.net/v/t39.30808-6/487316761_962637796080314_183690926622053492_n.jpg?stp=dst-jpg_s960x960_tt6&_nc_cat=106&ccb=1-7&_nc_sid=2a1932&_nc_ohc=X7BWqXRclZYQ7kNvwGF-nqX&_nc_oc=AdlDIokWXMt6j26rjF4mddIIyq1Vx-G6nk-UmWm5tqPq0Yju46VagaaGc61mTbm6wbY&_nc_zt=23&_nc_ht=scontent.fmex40-1.fna&_nc_gid=iMkwNXIHrfyCsZ-_00CdIg&_nc_ss=8&oh=00_AfuHOHDk90ld95hm18X7JalExbIxNPxZfj53Du0WpfO_1g&oe=69A9D9EC",
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
                      "ENCB - Escuela Nacional de Ciencias Biológicas",
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
                      "La Escuela Nacional de Ciencias Biológicas (ENCB) del IPN, fundada en 1934, es una institución líder en México en el área médico-biológica y físico-matemática. Ofrece formación de excelencia en ingeniería, química y biología, integrando docencia e investigación para la salud, el medio ambiente y la bioingeniería.",
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
                                      CarreraDetalleEncb(nombre: carrera),
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
class CarreraDetalleEncb extends StatelessWidget {
  final String nombre;
  const CarreraDetalleEncb({super.key, required this.nombre});

  String getDescripcion() {
    switch (nombre) {
      case 'Ingeniería en Biotecnología':
        return 'Formar profesionales capaces de aplicar biotecnología en procesos industriales y de investigación, integrando conocimientos en biología, química y tecnología para el desarrollo de productos innovadores y sostenibles.';
      case 'Ingeniería en Bioquímica':
        return 'Capacitar expertos en el diseño y análisis de procesos bioquímicos, aplicando técnicas de laboratorio y métodos de ingeniería para optimizar la producción de compuestos y sistemas biológicos.';
      case 'Licenciatura en Biología':
        return 'Formar biólogos con sólido conocimiento en ciencias naturales y habilidades en investigación, conservación y manejo de recursos biológicos, contribuyendo al desarrollo científico y ambiental.';
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
              "https://scontent.fmex40-1.fna.fbcdn.net/v/t39.30808-6/487316761_962637796080314_183690926622053492_n.jpg?stp=dst-jpg_s960x960_tt6&_nc_cat=106&ccb=1-7&_nc_sid=2a1932&_nc_ohc=X7BWqXRclZYQ7kNvwGF-nqX&_nc_oc=AdlDIokWXMt6j26rjF4mddIIyq1Vx-G6nk-UmWm5tqPq0Yju46VagaaGc61mTbm6wbY&_nc_zt=23&_nc_ht=scontent.fmex40-1.fna&_nc_gid=iMkwNXIHrfyCsZ-_00CdIg&_nc_ss=8&oh=00_AfuHOHDk90ld95hm18X7JalExbIxNPxZfj53Du0WpfO_1g&oe=69A9D9EC",
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