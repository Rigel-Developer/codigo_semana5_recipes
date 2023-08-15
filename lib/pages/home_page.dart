import 'package:codigo5_recipes/models/recipe.dart';
import 'package:codigo5_recipes/widgets/recipe_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // const HomePage({super.key});
  final TextEditingController _controllerTitle = TextEditingController();

  final TextEditingController _controllerDescription = TextEditingController();

  final TextEditingController _controllerUrl = TextEditingController();

  List<Recipe> recipe = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffFFB800),
        title: Text(
          "Mis Recetas",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 30,
            color: const Color(
              0xffFFFFFF,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: _controllerTitle,
                decoration: InputDecoration(
                  hintText: "Ingresa el nombre",
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  filled: true,
                  fillColor: const Color(0xffF0F0F0),
                  prefixIcon: SvgPicture.asset(
                    'assets/icons/target.svg',
                    fit: BoxFit
                        .scaleDown, //ajustar el tamaño del icono al tamaño del TextField
                    colorFilter: const ColorFilter.mode(
                      Color(
                        0xff69686E,
                      ),
                      BlendMode.srcIn,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    // borderSide: const BorderSide(
                    //   color: Colors.grey,
                    //   width: 1,
                    // ),
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    // borderSide: const BorderSide(
                    //   color: Colors.grey,
                    //   width: 1,
                    // ),
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              TextField(
                controller: _controllerDescription,
                decoration: InputDecoration(
                  hintText: "Ingresa una descripcion",
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  filled: true,
                  fillColor: const Color(0xffF0F0F0),
                  prefixIcon: SvgPicture.asset(
                    'assets/icons/text.svg',
                    fit: BoxFit
                        .scaleDown, //ajustar el tamaño del icono al tamaño del TextField
                    colorFilter: const ColorFilter.mode(
                      Color(
                        0xff69686E,
                      ),
                      BlendMode.srcIn,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    // borderSide: const BorderSide(
                    //   color: Colors.grey,
                    //   width: 1,
                    // ),
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    // borderSide: const BorderSide(
                    //   color: Colors.grey,
                    //   width: 1,
                    // ),
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide: BorderSide.none,
                  ),
                ),
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 16,
              ),
              TextField(
                controller: _controllerUrl,
                decoration: InputDecoration(
                  hintText: "Ingresa una url",
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  filled: true,
                  fillColor: const Color(0xffF0F0F0),
                  prefixIcon: SvgPicture.asset(
                    'assets/icons/image.svg',
                    fit: BoxFit
                        .scaleDown, //ajustar el tamaño del icono al tamaño del TextField
                    colorFilter: const ColorFilter.mode(
                      Color(
                        0xff69686E,
                      ),
                      BlendMode.srcIn,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    // borderSide: const BorderSide(
                    //   color: Colors.grey,
                    //   width: 1,
                    // ),
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    // borderSide: const BorderSide(
                    //   color: Colors.grey,
                    //   width: 1,
                    // ),
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide: BorderSide.none,
                  ),
                ),
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    recipe.add(
                      Recipe(
                        title: _controllerTitle.text,
                        description: _controllerDescription.text,
                        image: _controllerUrl.text,
                      ),
                    );
                    setState(() {});

                    //limpiar
                    _controllerTitle.clear();
                    _controllerDescription.clear();
                    _controllerUrl.clear();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffFFB800),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                    ),
                  ),
                  child: const Text(
                    "Guardar",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Recetas",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      offset: const Offset(0, 0), // Desplazamiento en X y Y
                      blurRadius: 30, // Radio de difuminado
                      spreadRadius:
                          -5, // Radio de expansión// changes position of shadow
                    ),
                  ],
                ),
                height: 300,
                // width: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: recipe.length,
                  itemBuilder: (BuildContext context, int index) {
                    return RecipeItem(
                      recipe: recipe[index],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
