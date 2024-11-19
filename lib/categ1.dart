import 'package:flutter/material.dart';

class Cat1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Instrumentos de Cuerda"),
          backgroundColor: const Color.fromARGB(255, 155, 104, 38),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 15),
              // Banner principal
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 255, 255), // Color del botón
                    foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  ),
                  child: Text(
                    "Volver",
                    style: TextStyle(fontSize: 16),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/menu");
                  },
                ),
              ),
              SizedBox(height: 15),
              Image.network(
                "https://images.squarespace-cdn.com/content/v1/5d38af596682e900018c1995/623fa8da-2a04-4a9f-9843-e71335ec254e/banner_web-CUERDAS-2560x768.jpg", //banner
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 10),
              // Descripción debajo del banner
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Explora nuestra colección de instrumentos de cuerda. Calidad garantizada y los mejores precios.",
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
                  imageUrl:
                      "data:image/jpeg;base64,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", // URL de la imagen de guitarra
                  name: "Guitarra Clásica",
                  description:
                      "Ideal para principiantes y estudiantes de música.",
                  price: "\$120.00",
                ),
                _buildInstrumentCard(
                  context,
                  imageUrl:
                      "https://png.pngtree.com/thumb_back/fh260/background/20230705/pngtree-d-rendering-of-a-solo-violin-and-strings-musical-instrument-in-image_3829261.jpg", // URL de la imagen de violín
                  name: "Violín 4/4",
                  description:
                      "Violín de tamaño completo para músicos avanzados.",
                  price: "\$300.00",
                ),
                _buildInstrumentCard(
                  context,
                  imageUrl:
                      "data:image/jpeg;base64,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", // URL de la imagen de chelo
                  name: "Violonchelo",
                  description:
                      "Violonchelo de madera maciza para música orquestal.",
                  price: "\$800.00",
                ),
                _buildInstrumentCard(
                  context,
                  imageUrl:
                      "https://png.pngtree.com/thumb_back/fh260/background/20230611/pngtree-harp-on-a-black-background-image_2945115.jpg", // URL de la imagen de arpa
                  name: "Arpa",
                  description: "Arpa celta con un sonido suave y envolvente.",
                  price: "\$1,500.00",
                ),
              ],
            ),

            ],
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
