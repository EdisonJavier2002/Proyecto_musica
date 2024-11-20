import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Imagen de fondo
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://thumbs.dreamstime.com/z/fondo-musical-de-m%C3%BAsica-abstracto-hd-banner-completo-292191825.jpg', // Reemplaza con la URL de tu imagen de fondo
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.0),
              child: Container(
                constraints: BoxConstraints(maxWidth: 400), // Limitar el ancho máximo (aumentado de 350 a 400)
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  //color: Colors.white.withOpacity(0.85),//cambio de opacidad
                  color: Colors.transparent, // Fondo transparente
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Logo o imagen superior
                    Container(
                      height: 300,  // Aumenta el tamaño de la imagen
                      width: 300,   // Aumenta el tamaño de la imagen
                      child: Image.network(
                        'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/music-logo%2C-guitar-logo%2C-music-podcast-logo-%28-design-template-ec95f9fab72c2915bbe1d7207d592ee0_screen.jpg?ts=1667293077', // Reemplaza con la URL de tu logo o imagen superior
                      ),
                    ),
                    SizedBox(height: 20),

                    // Campo de Usuario
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person, color: const Color.fromARGB(255, 189, 119, 27)),
                        hintText: 'Usuario',
                        contentPadding: EdgeInsets.symmetric(vertical: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        filled: true,
                        fillColor: Colors.grey[200],
                      ),
                    ),
                    SizedBox(height: 15),

                    // Campo de Contraseña
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock, color: const Color.fromARGB(255, 189, 119, 27)),
                        hintText: 'Contraseña',
                        contentPadding: EdgeInsets.symmetric(vertical: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        filled: true,
                        fillColor: Colors.grey[200],
                      ),
                    ),
                    SizedBox(height: 25),

                    // Botón de Inicio de Sesión
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 183, 133, 24),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 12),
                        ),
                        child: Text(
                          'Iniciar sesión',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, "/menu");
                        },
                      ),
                    ),

                    SizedBox(height: 20),

                    // Texto de enlace para recuperar la contraseña
                    TextButton(
                      onPressed: () {
                        // Acción de recuperación de contraseña
                      },
                      child: Text(
                        '¿Olvidaste tu contraseña?',
                        style: TextStyle(color: const Color.fromARGB(255, 211, 128, 26), fontSize: 14),
                      ),
                    ),
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
