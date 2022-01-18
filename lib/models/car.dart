class Car {
  String brand;
  String model;
  double price;
  String? condition;
  List<String>? images;

  Car({
    required this.brand,
    required this.model,
    required this.price,
    this.condition,
    this.images,
  });
}
