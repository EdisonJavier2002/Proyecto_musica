import 'package:flutter/material.dart';

class Cat2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi APP",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Instrumentos de Viento"),
          backgroundColor: const Color.fromARGB(255, 30, 128, 255),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Banner principal
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple, // Color del botón
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  ),
                  child: Text(
                    "Salir",
                    style: TextStyle(fontSize: 16),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/menu");
                  },
                ),
              ),
              Image.network(
                "https://via.placeholder.com/800x300", // Reemplaza con la URL de tu banner
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 10),
              // Descripción debajo del banner
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Explora nuestra colección de instrumentos de viento. Calidad garantizada y los mejores precios.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Listado de instrumentos de viento
              Column(
                children: [
                  _buildInstrumentCard(
                    context,
                    imageUrl: "https://via.placeholder.com/150", // Imagen de ejemplo
                    name: "Flauta",
                    description: "Flauta traversa de calidad profesional.",
                    price: "\$120.00",
                  ),
                  _buildInstrumentCard(
                    context,
                    imageUrl: "https://via.placeholder.com/150", // Imagen de ejemplo
                    name: "Clarinete",
                    description: "Clarinete de madera para músicos intermedios.",
                    price: "\$200.00",
                  ),
                  _buildInstrumentCard(
                    context,
                    imageUrl: "https://via.placeholder.com/150", // Imagen de ejemplo
                    name: "Saxofón",
                    description: "Saxofón alto ideal para jazz y música clásica.",
                    price: "\$350.00",
                  ),
                  _buildInstrumentCard(
                    context,
                    imageUrl: "https://via.placeholder.com/150", // Imagen de ejemplo
                    name: "Trompeta",
                    description: "Trompeta dorada con excelente proyección.",
                    price: "\$250.00",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget para un instrumento individual
  Widget _buildInstrumentCard(BuildContext context, {
    required String imageUrl,
    required String name,
    required String description,
    required String price,
  }) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Imagen del instrumento
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                imageUrl,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 16),
            // Descripción del instrumento
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    description,
                    style: TextStyle(fontSize: 14, color: Colors.black87),
                  ),
                  SizedBox(height: 8),
                  Text(
                    price,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
