class CategoeryModel {
  String? id;
  DateTime? createdAt;
  String? title;
  String? image;
  int? numOfProducts;

  CategoeryModel({
    this.id,
    this.createdAt,
    this.title,
    this.image,
    this.numOfProducts,
  });

  factory CategoeryModel.fromJson(Map<String, dynamic> json) {
    return CategoeryModel(
      id: json['id'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      title: json['title'] as String?,
      image: json['image'] as String?,
      numOfProducts: json['numOfProducts'] as int?,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'createdAt': createdAt?.toIso8601String(),
        'title': title,
        'image': image,
        'numOfProducts': numOfProducts,
      };
}
