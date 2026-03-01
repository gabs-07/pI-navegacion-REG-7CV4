
# 🚀 Navegación IPN 

Bienvenido a mi proyecto de navegación de múltiples niveles en Flutter, donde podrás explorar las principales escuelas del Instituto Politécnico Nacional (IPN) y sus carreras.

## 📱 Descripción de las Activities

- **HomePage:** Pantalla principal con botones para cada escuela del IPN en Zacatenco.
<img width="234" height="500" alt="Image" src="https://github.com/user-attachments/assets/33b1d990-1164-4d03-82c6-bd70b9832232" />

- **Pantallas de Escuela:** Cada escuela (ESCOM, ENCB, ESIQIE, ESIME, ESFM, ESIT) tiene su propia pantalla con información relevante y una lista de carreras.

<img width="234" height="500" alt="Image" src="https://github.com/user-attachments/assets/6b35b722-1288-4ca7-ad0d-01a680435c89" />

- **Detalle de Carrera:** Al seleccionar una carrera, se muestra una pantalla con la descripción específica y un botón para regresar.

<img width="234" height="500" alt="Image" src="https://github.com/user-attachments/assets/c4951c9d-a8b2-4dd4-80e8-1ef2fa95e1b2" />
<img width="234" height="500" alt="Image" src="https://github.com/user-attachments/assets/e202a5f4-4ad5-4abc-a5b4-0c009d6b0991" />
<img width="234" height="500" alt="Image" src="https://github.com/user-attachments/assets/af0d0e48-33dc-4d01-bc33-f4d976f3f445" />

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
