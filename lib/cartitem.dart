class CartItem {
  final String image;
  final String name;
  final String quantity;
  final double price;
  int count;

  CartItem({
    required this.image,
    required this.name,
    required this.quantity,
    required this.price,
    this.count = 1,
  });
}
