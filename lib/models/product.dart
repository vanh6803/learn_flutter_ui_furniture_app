import 'dart:convert';

class Product {
  final int price;
  final String id, title, category, image, subTitle, description;

  Product(
      {required this.id,
      required this.title,
      required this.price,
      required this.category,
      required this.image,
      required this.subTitle,
      required this.description});

  // it creates an product form json

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        id: json['id'],
        title: json['title'],
        price: json['price'],
        category: json['category'],
        image: json['image'],
        subTitle: json['subTitle'],
        description: json['description']);
  }
}

// Our Demo Product
Product product = Product(
  id: "1",
  price: 1600,
  title: "Wood Frame",
  image: "https://i.imgur.com/sI4GvE6.png",
  category: "Chair",
  subTitle: "Tieton Armchair",
  description: description,
);

String description =
    "This armchair is an elegant and functional piece of furniture. It is suitable for family visits and parties with friends and perfect for relaxing in front of the TV after hard work.";
