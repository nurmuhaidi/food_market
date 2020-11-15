part of 'models.dart';

class Food {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;

  Food({
    this.id,
    this.picturePath,
    this.name,
    this.description,
    this.ingredients,
    this.price,
    this.rate,
  });
}

Food mockFood = Food(
  id: 1,
  picturePath: 'assets/image/food_image.jpg',
  name: 'Sate Sayur Sultan',
  description:
      'Sate Sayur Sultan adalah menu sate yang paling terkenal di bandung',
  ingredients: 'Bawang Merah, Paprika, Bawang Bombay, Timun',
  price: 150000,
  rate: 4,
);
