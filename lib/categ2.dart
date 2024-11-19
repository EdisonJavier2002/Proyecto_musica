import 'package:flutter/material.dart';

class Cat2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Instrumentos de Viento"),
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
                "https://i0.wp.com/www.yamabol-srl.com/wp-content/uploads/2020/06/Tuba.jpg?resize=1024%2C407&ssl=1", //banner
                width: double.infinity,
                height: 300,
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
                    imageUrl: "data:image/jpeg;base64,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cMXq/wCXACU4dxIU87aTYykAAAE61rXt2mIiB35OSbGLn3JY70QWPqda1/iddtpclm1vsOwCjQGgAB2HpOEQEREBERAsSRAsREBERAsSSwEREBERAkaiIHotvHZUrQKBretsx/qJ+f09JzwrLVdbKUPNCGUgcuLD0b7HvPJNi6TkdMppU5aZmVceRNFNgpx9fyhm/Vv9oHiyWyLm5ZOQSzf12F2P2HrMl0zwjkX8CmNeyuQFst44tRPy5Nrf2nrp8cGnY6f0/CwdDs6Vi64fU2N/4mLy+q5/ULS9j3ZrorovNReK1caLKuuKfuANdjvsIGxr4axMXf53qmBisv66cVWz8gH5bA0J13db6Lj9qsPK6k47c824U0n6+Wm/7HU06/FNLILHTu3cI6WlNEb2FJ0fp2PrPcOo4VRby8Nrzv4LMizj7dyUX6+3IwMn1jxZbl0flimFh4zvs041ArJCjkgJ7sw2B336/wCPZgeJqcXFxKMRCz01XX38ytStlNtQd8hzCozencngBojY1XJ6zc5HErSoO0qpHl1Ida2F+fr39frPBuB35t72WWPY3J2d2dwQeTEkk9ux+3add1nLWlCgAAAEn7zriBd+0kRAREQEREBERAREQEREBERASyRAsREBERAsSSwESRAkREBERAoP/udluQ775MSDrt6L29Br0AG+w9p1RAREQEREBERAREQEREBERAREQEREBERAREQEREBLJECxEQEREBERAkREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEskQLEksBERAkREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAsRED/9k=", // Imagen de ejemplo
                    name: "Flauta",
                    description: "Flauta traversa de calidad profesional.",
                    price: "\$120.00",
                  ),
                  _buildInstrumentCard(
                    context,
                    imageUrl: "https://thumbs.dreamstime.com/b/clarinet-aislado-en-fondo-negro-6844217.jpg", // Imagen de ejemplo
                    name: "Clarinete",
                    description: "Clarinete de madera para músicos intermedios.",
                    price: "\$200.00",
                  ),
                  _buildInstrumentCard(
                    context,
                    imageUrl: "data:image/jpeg;base64,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", // Imagen de ejemplo
                    name: "Saxofón",
                    description: "Saxofón alto ideal para jazz y música clásica.",
                    price: "\$350.00",
                  ),
                  _buildInstrumentCard(
                    context,
                    imageUrl: "data:image/jpeg;base64,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", // Imagen de ejemplo
                    name: "Trompeta",
                    description: "Trompeta dorada con excelente proyección.",
                    price: "\$250.00",
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
