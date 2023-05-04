class CoffeeItems {
  double? rating;
  String? itemImg;
  String? title;
  String? subtitle;
  String? price;

  CoffeeItems(
      {this.itemImg, this.price, this.rating, this.subtitle, this.title});

  CoffeeItems.fromJson(Map<String, dynamic> json) {
    rating = json['rating'];
    itemImg = json['itemImg'];
    title = json['title'];
    subtitle = json['subtitle'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rating'] = this.rating;
    data['itemImg'] = this.itemImg;
    data['title'] = this.title;
    data['subtitle'] = this.subtitle;
    data['price'] = this.price;
    return data;
  }
}
