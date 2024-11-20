import 'package:flutter/material.dart';

class Cat3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi APP",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Instrumentos de Percusión"),
          backgroundColor: const Color.fromARGB(255, 155, 104, 38), // Color temático para la barra superior
        ),
        
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://static.vecteezy.com/system/resources/previews/000/125/682/non_2x/vector-note-of-music-background-template.jpg"), // URL de la imagen de fondo
              fit: BoxFit.cover, // Ajusta la imagen para cubrir todo el fondo
              alignment: Alignment.center, // Centra la imagen
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple, // Color del botón
                      foregroundColor: Colors.white,
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
                // Banner principal
                Image.network(
                  "https://media.istockphoto.com/id/1400865302/es/vector/gran-conjunto-de-iconos-de-instrumentos-musicales-de-prcussion-aislados.jpg?s=612x612&w=0&k=20&c=01w7X62RcylvVbqM2e6URhK8WUoq9Vih2JfZinxsNi0=", // URL de tu imagen
                  width: double.infinity, // Esto asegura que la imagen ocupe todo el ancho disponible
                  height: 200, // Ajusta la altura según lo que necesites
                  fit: BoxFit.cover, // Esto asegura que la imagen se escale correctamente para cubrir el área disponible
                ),
                SizedBox(height: 10),
                // Descripción debajo del banner
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Explora nuestra colección de instrumentos de percusión. Calidad garantizada y los mejores precios.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
                SizedBox(height: 20),

                // Primer grupo de 3 Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildInstrumentCard(
                      context,
                      imageUrl:
                          "https://http2.mlstatic.com/D_NQ_NP_811897-MLU74317471779_012024-O.webp", // Imagen de ejemplo
                      name: "Batería",
                      description: "Batería acústica completa con platillos.",
                      price: "\$1200.00",
                    ),
                    _buildInstrumentCard(
                      context,
                      imageUrl:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJA8T9zvY8DfOIl7RNHTJnuygBV2mg8-JGPg&s", // Imagen de ejemplo
                      name: "Congas",
                      description: "Set de congas de alta calidad para percusionistas.",
                      price: "\$450.00",
                    ),
                    _buildInstrumentCard(
                      context,
                      imageUrl:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJh6UCA2iaUD-uihcORyO5eMPqBiI9tXDckA&s", // Imagen de ejemplo
                      name: "Timbal",
                      description: "Timbal profesional con excelente resonancia.",
                      price: "\$350.00",
                    ),
                  ],
                ),
                SizedBox(height: 20),

                // Segundo grupo de 3 Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  
                  children: [
                    _buildInstrumentCard(
                      context,
                      imageUrl:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfsyd6a1nk782IThJ5CfNGIr0BdEpe4FZXpw&s", // Imagen de ejemplo
                      name: "Caja",
                      description: "Caja flamenca con sonido nítido y potente.",
                      price: "\$250.00",
                    ),
                    _buildInstrumentCard(
                      context,
                      imageUrl:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7Trwto350NGveMc4CNoiMq3qi_b6wT2yYtA&s", // Imagen de ejemplo
                      name: "Bongós",
                      description: "Bongós de madera de roble para ritmo latino.",
                      price: "\$200.00",
                    ),
                    _buildInstrumentCard(
                      context,
                      imageUrl:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlhlZXurPjL2_DQIABqhmti_23Id465ywW3w&s", // Imagen de ejemplo
                      name: "Pandereta",
                      description: "Pandereta con sonajeros metálicos.",
                      price: "\$45.00",
                    ),
                  ],
                ),
                SizedBox(height: 20),

                // Tercer grupo de 3 Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildInstrumentCard(
                      context,
                      imageUrl:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9rtZET0ua3ZoeFP14K3M5R_7EN_O9V67s8w&s", // Imagen de ejemplo
                      name: "Cajón Peruano",
                      description: "Cajón de alta calidad con excelente resonancia.",
                      price: "\$180.00",
                    ),
                    _buildInstrumentCard(
                      context,
                      imageUrl:
                          "https://http2.mlstatic.com/D_NQ_NP_672315-CBT80554194203_112024-O.webp", // Imagen de ejemplo
                      name: "Maracas",
                      description: "Maracas de madera con sonajeros internos.",
                      price: "\$25.00",
                    ),
                    _buildInstrumentCard(
                      context,
                      imageUrl:
                          "https://http2.mlstatic.com/D_NQ_NP_678963-CBT78875340772_092024-O.webp", // Imagen de ejemplo
                      name: "Güiro",
                      description: "Güiro de madera con gran proyección.",
                      price: "\$30.00",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget para un instrumento individual
  Widget _buildInstrumentCard(
    BuildContext context, {
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
        child: Column(
          children: [
            // Imagen del instrumento
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                imageUrl,
                width: 100,
                height: 100,
                fit: BoxFit.cover, // Ajusta la imagen para que se vea bien dentro de la tarjeta
              ),
            ),
            SizedBox(height: 8),
            // Nombre del instrumento
            Text(
              name,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            // Descripción del instrumento
            Text(
              description,
              style: TextStyle(fontSize: 14, color: Colors.black87),
            ),
            SizedBox(height: 8),
            // Precio del instrumento
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
    );
  }
}
