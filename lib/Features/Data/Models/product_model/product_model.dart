class ProductModel {
  String? id;
  DateTime? createdAt;
  String? title;
  int? price;
  String? category;
  String? image;
  String? subTitle;
  String? description;

  ProductModel({
    this.id,
    this.createdAt,
    this.title,
    this.price,
    this.category,
    this.image,
    this.subTitle,
    this.description,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json['id'] as String?,
        createdAt: json['createdAt'] == null
            ? null
            : DateTime.parse(json['createdAt'] as String),
        title: json['title'] as String?,
        price: json['price'] as int?,
        category: json['category'] as String?,
        image: json['image'] as String?,
        subTitle: json['subTitle'] as String?,
        description: json['description'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt?.toIso8601String(),
        'title': title,
        'price': price,
        'category': category,
        'image': image,
        'subTitle': subTitle,
        'description': description,
      };
}
