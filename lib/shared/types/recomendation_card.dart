class RecommendCard {
  RecommendCard(this.title, this.country, this.image, this.price);

  final String title, country, image;

  final int price;

  factory RecommendCard.fromJson(Map<String, dynamic> json) {
    return RecommendCard(
        json["title"], json["country"], json["image"], json["price"]);
  }

  @override
  String toString() {
    return "{title:$title, country:$country, image:$image, price:$price}";
  }
}
