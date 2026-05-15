class Products {
  final String image;
  final String productname;
  final String price;
  String? oldprice;

  Products({
    required this.image,
    required this.productname,
    required this.price,
    this.oldprice,
  });
}
