class Pizza {
  final int id;
  final String name;
  final String topping;
  final double price;
  final String imagePath;
  final int rating;

  const Pizza({
    required this.id,
    required this.name,
    required this.topping,
    required this.price,
    required this.imagePath,
    required this.rating,
  });
}

const PIZZAS = [
  Pizza(
    id: 0,
    name: 'Domino',
    topping: 'Tomato sauce, salami, olive, mozzarella',
    price: 11.2,
    imagePath: 'images/pizza-domino.png',
    rating: 3,
  ),
  Pizza(
    id: 1,
    name: 'Pizza Ruccola',
    topping: 'Tomato sauce, salami, ruccola, mozzarella',
    price: 11.2,
    imagePath: 'images/pizza-ruccola.png',
    rating: 2,
  ),
  Pizza(
    id: 2,
    name: 'Pizza Salami',
    topping: 'Tomato sauce, salami, mozzarella',
    price: 11.2,
    imagePath: 'images/pizza-salami.png',
    rating: 4,
  ),
  Pizza(
    id: 3,
    name: 'Pizza Sushi',
    topping: 'Tomato sauce, salami, mushroom, mozzarella',
    price: 11.2,
    imagePath: 'images/pizza-sushi.png',
    rating: 5,
  ),
  Pizza(
    id: 4,
    name: 'Pepperoni',
    topping: 'Tomato sauce, salami, pepperoni, mozzarella',
    price: 11.2,
    imagePath: 'images/pizza-pepperoni.png',
    rating: 4,
  ),
];
