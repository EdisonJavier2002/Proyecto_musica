import 'package:flutter/material.dart';

class MenuView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menú Principal"),
        backgroundColor:  const Color.fromARGB(255, 155, 104, 38), // Color temático para la barra superior
      ),
      body: Container(
        // Imagen de fondo utilizando BoxDecoration
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://static.vecteezy.com/system/resources/previews/021/990/306/large_2x/colorful-music-notes-background-with-sheet-music-disc-and-treble-clef-illustration-ai-generative-free-photo.jpg"), // URL de la imagen de fondo
            fit: BoxFit.cover, // Ajusta la imagen para cubrir todo el fondo
            alignment: Alignment.center, // Centra la imagen
          ),
        ),
        child: Stack(
          children: [
            Container(
          color: Colors.black.withOpacity(0.7), // Negro con opacidad al 50%
          ),
 
          Column(
            children: [
              // Imagen principal en la parte superior
              
              SizedBox(height: 60),
              // Descripción debajo de la imagen principal
              Text(
                "Explora las categorías de instrumentos musicales. ¡Encuentra lo que buscas!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white, // Color del texto
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 60),
              // Filas con imágenes pequeñas y botones
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(
                                20), // Ajusta el radio para redondear las esquinas
                            child: Image.network(
                              "https://st.depositphotos.com/1217569/1681/i/450/depositphotos_16811233-stock-illustration-violin-floral-background.jpg", // URL de la imagen
                              width: 150,
                              height: 150,
                              fit: BoxFit
                                  .cover, // Asegura que la imagen se ajuste dentro del recorte
                            ),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 155, 104, 38),// Color del botón
                            foregroundColor: Colors.white,
                          ),
                          child: Text("Instrumentos de Cuerda"),
                          onPressed: () {
                            Navigator.pushNamed(context, "/categ1");
                          },
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(
                                20), // Ajusta el radio para redondear las esquinas
                            child: Image.network(
                              "https://st4.depositphotos.com/10039382/22714/i/450/depositphotos_227141386-stock-photo-number-toy-wind-instruments-lying.jpg", // URL de la imagen
                              width: 150,
                              height: 150,
                              fit: BoxFit
                                  .cover, // Asegura que la imagen se ajuste dentro del recorte
                            ),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 155, 104, 38),
                            foregroundColor: Colors.white,
                          ),
                          child: Text("Instrumentos de Viento"),
                          onPressed: () {
                            Navigator.pushNamed(context, "/categ2");
                          },
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(
                                20), // Ajusta el radio para redondear las esquinas
                            child: Image.network(
                              "https://images.unsplash.com/photo-1519892300165-cb5542fb47c7?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8bXVzaWMlMjBpbnN0cnVtZW50fGVufDB8fDB8fHww", // URL de la imagen
                              width: 150,
                              height: 150,
                              fit: BoxFit
                                  .cover, // Asegura que la imagen se ajuste dentro del recorte
                            ),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 155, 104, 38),
                            foregroundColor: Colors.white,
                            
                          ),
                          child: Text("Instrumentos de Percusión"),
                          onPressed: () {
                            Navigator.pushNamed(context, "/categ3");
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 60),
              // Botón central al final
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  ),
                  child: Text(
                    "Salir",
                    style: TextStyle(fontSize: 16),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/");
                  },
                ),
              ),
            ],
          ),
          ]
        )
      ),
    );
  }
}
