part of 'models.dart';

enum FoodType { new_food, popular, recomended }

class Food extends Equatable {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;
  final List<FoodType> types;

  Food({
    this.id,
    this.picturePath,
    this.name,
    this.description,
    this.ingredients,
    this.price,
    this.rate,
    this.types = const [],
  });

  @override
  List<Object> get props => [
        id,
        picturePath,
        name,
        description,
        ingredients,
        price,
        rate,
      ];
}

List<Food> mockFoods = [
  Food(
    id: 1,
    picturePath: 'assets/image/food_image.jpg',
    name: 'Sate Sayur Sultan',
    description:
        'Sate Sayur Sultan adalah menu sate yang paling terkenal di bandung',
    ingredients: 'Bawang Merah, Paprika, Bawang Bombay, Timun',
    price: 150000,
    rate: 4,
    types: [FoodType.new_food, FoodType.popular, FoodType.recomended],
  ),
  Food(
    id: 2,
    picturePath: 'assets/image/food_image.jpg',
    name: 'Sate Sayur Pejabat',
    description:
        'Sate Sayur Sultan adalah menu sate yang paling terkenal di bandung',
    ingredients: 'Bawang Merah, Paprika, Bawang Bombay, Timun',
    price: 300000,
    rate: 5,
    types: [FoodType.new_food, FoodType.recomended],
  ),
  Food(
    id: 3,
    picturePath: 'assets/image/food_image.jpg',
    name: 'Sate Sayur Rakyat',
    description:
        'Sate Sayur Sultan adalah menu sate yang paling terkenal di bandung',
    ingredients: 'Bawang Merah, Paprika, Bawang Bombay, Timun',
    price: 100000,
    rate: 4.5,
    types: [FoodType.popular],
  ),
  Food(
    id: 4,
    picturePath: 'assets/image/food_image.jpg',
    name: 'Sate Sayur Mantap',
    description:
        'Sate Sayur Sultan adalah menu sate yang paling terkenal di bandung',
    ingredients: 'Bawang Merah, Paprika, Bawang Bombay, Timun',
    price: 50000,
    rate: 5,
    types: [FoodType.new_food],
  )
];
