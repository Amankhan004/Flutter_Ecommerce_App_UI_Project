import 'package:ecommerce_app_complete_ui_project/Data/category_data/restaurants_data.dart';

List<ItemData> cartItems = [];
void addToCart(ItemData item) {
  cartItems.add(item);
}

void removeFromCart(ItemData item) {
  cartItems.remove(item);
}