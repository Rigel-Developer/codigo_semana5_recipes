import 'package:codigo5_recipes/models/recipe.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final Recipe recipe;
  const DetailPage({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, // Extender el fondo detrás de la barra
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Establecer el fondo transparente
        elevation: 0,
        leading: Container(
          margin: const EdgeInsets.all(8.0),
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back_sharp,
            ), // Icono personalizado para el botón de retroceso
            onPressed: () {
              Navigator.pop(context); // Acción al presionar el botón
            },
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: const Icon(Icons.favorite_border),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(recipe.image),
          const SizedBox(
            height: 5.0,
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            margin: const EdgeInsets.symmetric(horizontal: 16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.07),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.star, color: Colors.amber),
                    Icon(Icons.star, color: Colors.amber),
                    Icon(Icons.star, color: Colors.amber),
                    Icon(Icons.star_border, color: Colors.amber),
                    Icon(Icons.star_border, color: Colors.amber),
                  ],
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.restaurant, color: Colors.amber),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          recipe.title,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "3.0",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Icon(Icons.star_half, color: Colors.amber)
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16.0,
                ),
                const Text(
                  "Description: ",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(recipe.description),
                const SizedBox(
                  height: 16.0,
                ),
                const Text(
                  "Ingredients: ",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  padding: const EdgeInsets.all(8),
                  shrinkWrap: true,
                  // childAspectRatio: 3.5,
                  children: List.generate(6, (index) {
                    return Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 2,
                              blurRadius: 4,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Image.network(
                              "https://cdn-icons-png.flaticon.com/128/2153/2153788.png",
                              height: 70,
                              width: 70,
                              fit: BoxFit.fill,
                            ),
                            const Text("Zanahorias")
                          ],
                        ));
                  }),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
