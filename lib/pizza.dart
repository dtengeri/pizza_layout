class Pizza {
  final String? name;
  final String? topping;
  final double? price;
  final String? imagePath;
  final int? rating;

  const Pizza({
    this.name,
    this.topping,
    this.price,
    this.imagePath,
    this.rating,
  });
}

const PIZZAS = [
  Pizza(
    name: 'Domino',
    topping: 'Tomato sauce, salami, olive, mozzarella',
    price: 11.2,
    imagePath: 'images/pizza-domino.png',
    rating: 3,
  ),
  Pizza(
    name: 'Pizza Ruccola',
    topping: 'Tomato sauce, salami, ruccola, mozzarella',
    price: 11.2,
    imagePath: 'images/pizza-ruccola.png',
    rating: 2,
  ),
  Pizza(
    name: 'Pizza Salami',
    topping: 'Tomato sauce, salami, mozzarella',
    price: 11.2,
    imagePath: 'images/pizza-salami.png',
    rating: 4,
  ),
  Pizza(
    name: 'Pizza Sushi',
    topping: 'Tomato sauce, salami, mushroom, mozzarella',
    price: 11.2,
    imagePath: 'images/pizza-sushi.png',
    rating: 5,
  ),
  Pizza(
    name: 'Pepperoni',
    topping: 'Tomato sauce, salami, pepperoni, mozzarella',
    price: 11.2,
    imagePath: 'images/pizza-pepperoni.png',
    rating: 4,
  ),
];
