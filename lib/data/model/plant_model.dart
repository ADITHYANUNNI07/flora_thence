class PlantModel {
  final int id;
  final int categoryId;
  final String imageUrl;
  final String name;
  final double rating;
  final int displaySize;
  final List<int> availableSize;
  final String unit;
  final String price;
  final String priceUnit;
  final String description;

  PlantModel({
    required this.id,
    required this.categoryId,
    required this.imageUrl,
    required this.name,
    required this.rating,
    required this.displaySize,
    required this.availableSize,
    required this.unit,
    required this.price,
    required this.priceUnit,
    required this.description,
  });
  factory PlantModel.fromJson(Map<String, dynamic> json) {
    return PlantModel(
      id: json['id'],
      categoryId: json['category_id'],
      imageUrl: json['image_url'],
      name: json['name'],
      rating: json['rating'].toDouble(),
      displaySize: json['display_size'],
      availableSize: List<int>.from(json['available_size']),
      unit: json['unit'],
      price: json['price'],
      priceUnit: json['price_unit'],
      description: json['description'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'category_id': categoryId,
      'image_url': imageUrl,
      'name': name,
      'rating': rating,
      'display_size': displaySize,
      'available_size': availableSize,
      'unit': unit,
      'price': price,
      'price_unit': priceUnit,
      'description': description,
    };
  }
}

Map<String, dynamic> jsonData = {
  "id": 1,
  "category_id": 1,
  "image_url":
      "https://firebasestorage.googleapis.com/v0/b/temp-e18cd.appspot.com/o/files%2Fplant1.png?alt=media&token=fdab412a-258d-4c8f-810c-6582698121af",
  "name": "Adromiscus",
  "rating": 4.5,
  "display_size": 18,
  "available_size": [18, 20, 24, 30],
  "unit": "cm",
  "price": "165",
  "price_unit": "\$",
  "description":
      "At home, Echeveria feels great and looks great, and with proper care, even pleases with flowers."
};

PlantModel plant = PlantModel.fromJson(jsonData);
