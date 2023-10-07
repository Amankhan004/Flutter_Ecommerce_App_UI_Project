import 'package:ecommerce_app_complete_ui_project/Data/category_data/restaurants_data.dart';


List<ItemData> favoriteItems = [];

void addToFavorites(ItemData item) {
  favoriteItems.add(item);
}

void removeFromFavorites(ItemData item) {
  favoriteItems.remove(item);
}