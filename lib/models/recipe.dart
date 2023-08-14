class Recipe {
  String title;
  String description;
  String image;

  Recipe({required this.title, required this.description, required this.image})
      : assert(image != "", "Image can't be empty");
}
