
# 🚀 Navegación IPN 

Bienvenido a mi proyecto de navegación de múltiples niveles en Flutter, donde podrás explorar las principales escuelas del Instituto Politécnico Nacional (IPN) y sus carreras.

## 📱 Descripción de las Activities

- **HomePage:** Pantalla principal con botones para cada escuela del IPN en Zacatenco.
- <img width="468" height="1005" alt="Image" src="https://github.com/user-attachments/assets/33b1d990-1164-4d03-82c6-bd70b9832232" />
- **Pantallas de Escuela:** Cada escuela (ESCOM, ENCB, ESIQIE, ESIME, ESFM, ESIT) tiene su propia pantalla con información relevante y una lista de carreras.
- **Detalle de Carrera:** Al seleccionar una carrera, se muestra una pantalla con la descripción específica y un botón para regresar.

## 🎬 Transiciones y Ciclo de Vida

- Las transiciones entre pantallas se manejan con `Navigator.push` y animaciones de desvanecimiento (`FadeTransition`).
- El ciclo de vida de Android se respeta usando el sistema de rutas de Flutter, permitiendo que cada pantalla se monte y desmonte correctamente.
- El botón de regresar utiliza `Navigator.pop` para volver a la pantalla anterior, manteniendo el historial de navegación.

## 🛠️ Instrucciones para ejecutar la aplicación

1. Clona el repositorio:
	```bash
	git clone https://github.com/gabs-07/pI-navegacion-REG-7CV4.git
	```
2. Instala las dependencias:
	```bash
	flutter pub get
	```
3. Ejecuta la app en tu dispositivo o emulador:
	```bash
	flutter run
	```

---
