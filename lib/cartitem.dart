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

  static List<CartItem> favourites = [];

  static void add(CartItem cartItem) {
    favourites.add(cartItem);
  }

  static void removeWhere(bool Function(CartItem item) condition) {
    favourites.removeWhere(condition);
  }

  static int get length => favourites.length;
}
