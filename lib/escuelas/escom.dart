import 'package:flutter/material.dart';
import 'package:navegacion/main.dart';



class Escom extends StatelessWidget {
  const Escom({super.key});

  final List<String> carreras = const [
    'Ingeniería en Sistemas Computacionales',
    'Ingeniería en Inteligencia Artificial',
    'Licenciatura en Ciencia de Datos',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF6A0032),
        title: const Text(
          'IPN - ESCOM',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              "https://scontent.fmex40-1.fna.fbcdn.net/v/t39.30808-6/532268935_1272401108010437_6689399053094854713_n.jpg?stp=dst-jpg_s960x960_tt6&_nc_cat=108&ccb=1-7&_nc_sid=2a1932&_nc_ohc=xbeS51CLVZwQ7kNvwHaTbtF&_nc_oc=AdnpsLgeJueiA0imh0n5-hFCLCDGEbZSZNowk4N8CEOkkIELhjULaVxRzvnq7eskyA4&_nc_zt=23&_nc_ht=scontent.fmex40-1.fna&_nc_gid=xsSnxwpdmFjU6egG0bcdTQ&_nc_ss=8&oh=00_Aft5apyraLh2vhfe9Xd6dx5BxYHckjVrIJ01rah847O6kQ&oe=69A9C0C7",
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              color: Colors.black54,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "ESCOM - Escuela Superior de Cómputo.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: const Text(
                    "La Escuela Superior de Cómputo (ESCOM) del IPN, ubicada en Zacatenco (CDMX) desde 1993, es una institución líder en México enfocada en la formación de ingenieros en el área de la computación. Ofrece tres carreras de alto nivel: Ingeniería en Sistemas Computacionales, Ingeniería en Inteligencia Artificial y Licenciatura en Ciencia de Datos.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Lista de carreras con navegación a detalle
                ...carreras.map((carrera) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 24.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Color(0xFF6A0032), width: 2),
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CarreraDetalle(nombre: carrera),
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
        ],
      ),
    );
  }
}

class CarreraDetalle extends StatelessWidget {
  final String nombre;
  const CarreraDetalle({super.key, required this.nombre});

  String getDescripcion() {
    switch (nombre) {
      case 'Ingeniería en Sistemas Computacionales':
        return 'Formar ingenieros en sistemas computacionales de sólida preparación científica y tecnológica en los ámbitos del desarrollo de software y hardware, que propongan, analicen, diseñen, desarrollen, implementen y gestionen sistemas computacionales a partir de tecnologías de vanguardia y metodologías, normas y estándares nacionales e internacionales de calidad; líderes de equipos de trabajo multidisciplinarios y multiculturales, con un alto sentido ético y de responsabilidad.';
      case 'Ingeniería en Inteligencia Artificial':
        return 'Formar expertos capaces de desarrollar sistemas inteligentes utilizando diferentes metodologías en las diferentes etapas de desarrollo y aplicando algoritmos en áreas como aprendizaje de máquina, procesamiento automático de lenguaje natural, visión artificial y modelos bioinspirados para atender las necesidades de los diferentes sectores de la sociedad a través de la generación de procesos y soluciones innovadoras.';
      case 'Licenciatura en Ciencia de Datos':
        return 'Formar expertos capaces de extraer conocimiento implícito y complejo, potencialmente útil a partir de grandes conjuntos de datos, utilizando métodos de inteligencia artificial, aprendizaje de máquina, estadística, sistemas de bases de datos y modelos matemáticos sobre comportamientos probables, para apoyar la toma de decisiones de alta dirección.';
      default:
        return 'Sin descripción disponible.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nombre,
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
              "https://scontent.fmex40-1.fna.fbcdn.net/v/t39.30808-6/532268935_1272401108010437_6689399053094854713_n.jpg?stp=dst-jpg_s960x960_tt6&_nc_cat=108&ccb=1-7&_nc_sid=2a1932&_nc_ohc=xbeS51CLVZwQ7kNvwHaTbtF&_nc_oc=AdnpsLgeJueiA0imh0n5-hFCLCDGEbZSZNowk4N8CEOkkIELhjULaVxRzvnq7eskyA4&_nc_zt=23&_nc_ht=scontent.fmex40-1.fna&_nc_gid=xsSnxwpdmFjU6egG0bcdTQ&_nc_ss=8&oh=00_Aft5apyraLh2vhfe9Xd6dx5BxYHckjVrIJ01rah847O6kQ&oe=69A9C0C7",
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
                      backgroundColor: Color(0xFF6A0032),
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