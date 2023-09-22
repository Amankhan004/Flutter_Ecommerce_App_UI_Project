
class ItemData {
  final String itemName;
  final double price;
  final double discount;
  final bool isPopular;

  ItemData({
    required this.itemName,
    required this.price,
    required this.discount,
    required this.isPopular,
  });
}

class RestaurantData {
  final String restaurantName;
  final String tagline;
  final List<ItemData> items;

  RestaurantData({
    required this.restaurantName,
    required this.tagline,
    required this.items,
  });
}

List<RestaurantData> restaurantsList = [
  RestaurantData(
    restaurantName: "KFC",
    tagline: "Finger Lickin' Good",
    items: [
      ItemData(
        itemName: "Original Recipe Chicken",
        price: 5.99,
        discount: 1.0,
        isPopular: true,
      ),
      ItemData(
        itemName: "Chicken Tenders",
        price: 4.99,
        discount: 0.5,
        isPopular: false,
      ),
      ItemData(
        itemName: "Spicy Chicken Sandwich",
        price: 6.49,
        discount: 0.0,
        isPopular: true,
      ),
      ItemData(
        itemName: "Mashed Potatoes",
        price: 2.99,
        discount: 0.0,
        isPopular: false,
      ),
      ItemData(
        itemName: "Coleslaw",
        price: 2.49,
        discount: 0.0,
        isPopular: false,
      ),
      ItemData(
        itemName: "Famous Bowl",
        price: 5.99,
        discount: 0.0,
        isPopular: false,
      ),
      ItemData(
        itemName: "Twister Wrap",
        price: 4.79,
        discount: 0.0,
        isPopular: false,
      ),
      ItemData(
        itemName: "Zinger Burger",
        price: 3.99,
        discount: 0.0,
        isPopular: true,
      ),
      ItemData(
        itemName: "Chicken Popcorn",
        price: 3.49,
        discount: 0.0,
        isPopular: false,
      ),
      ItemData(
        itemName: "Iced Tea",
        price: 1.99,
        discount: 0.0,
        isPopular: true,
      ),
    ],
  ),
  RestaurantData(
    restaurantName: "McDonald's",
    tagline: "I'm Lovin' It",
    items: [
      ItemData(
        itemName: "Big Mac",
        price: 3.99,
        discount: 0.0,
        isPopular: true,
      ),
      ItemData(
        itemName: "Chicken McNuggets",
        price: 2.99,
        discount: 0.0,
        isPopular: true,
      ),
      ItemData(
        itemName: "Quarter Pounder with Cheese",
        price: 4.29,
        discount: 0.0,
        isPopular: false,
      ),
      ItemData(
        itemName: "McDouble",
        price: 1.99,
        discount: 0.0,
        isPopular: false,
      ),
      ItemData(
        itemName: "Filet-O-Fish",
        price: 3.79,
        discount: 0.0,
        isPopular: false,
      ),
      ItemData(
        itemName: "French Fries",
        price: 1.49,
        discount: 0.0,
        isPopular: true,
      ),
      ItemData(
        itemName: "Apple Pie",
        price: 0.99,
        discount: 0.0,
        isPopular: true,
      ),
      ItemData(
        itemName: "Hot Caramel Sundae",
        price: 2.49,
        discount: 0.0,
        isPopular: false,
      ),
      ItemData(
        itemName: "Mocha Frappé",
        price: 3.29,
        discount: 0.0,
        isPopular: false,
      ),
      ItemData(
        itemName: "Iced Coffee",
        price: 1.79,
        discount: 0.0,
        isPopular: false,
      ),
    ],
  ),
RestaurantData(
  restaurantName: "Imtiaz Super Market",
  tagline: "Your Shopping Paradise",
  items: [
    ItemData(
      itemName: "Fresh Fruits",
      price: 2.99,
      discount: 0.0,
      isPopular: true,
    ),
    ItemData(
      itemName: "Organic Vegetables",
      price: 2.49,
      discount: 0.1,
      isPopular: true,
    ),
    ItemData(
      itemName: "Milk and Dairy",
      price: 1.99,
      discount: 0.0,
      isPopular: true,
    ),
    ItemData(
      itemName: "Bread Loaf",
      price: 1.49,
      discount: 0.0,
      isPopular: false,
    ),
    ItemData(
      itemName: "Fresh Eggs",
      price: 1.99,
      discount: 0.0,
      isPopular: true,
    ),
    ItemData(
      itemName: "Cereals",
      price: 3.99,
      discount: 0.2,
      isPopular: false,
    ),
    ItemData(
      itemName: "Pasta",
      price: 2.99,
      discount: 0.0,
      isPopular: false,
    ),
    ItemData(
      itemName: "Snacks",
      price: 2.49,
      discount: 0.0,
      isPopular: true,
    ),
    ItemData(
      itemName: "Beverages",
      price: 1.99,
      discount: 0.0,
      isPopular: true,
    ),
    ItemData(
      itemName: "Cleaning Supplies",
      price: 4.99,
      discount: 0.0,
      isPopular: false,
    ),
   
  ],

  ),

  RestaurantData(
  restaurantName: "Ocean Fish Market",
  tagline: "Seafood Specialists",
  items: [
    ItemData(
      itemName: "Fresh Salmon",
      price: 9.99,
      discount: 0.0,
      isPopular: true,
    ),
    ItemData(
      itemName: "Shrimp",
      price: 7.99,
      discount: 0.0,
      isPopular: true,
    ),
    ItemData(
      itemName: "Tilapia",
      price: 6.49,
      discount: 0.0,
      isPopular: true,
    ),
    ItemData(
      itemName: "Cod",
      price: 8.99,
      discount: 0.0,
      isPopular: false,
    ),
    ItemData(
      itemName: "Lobster",
      price: 15.99,
      discount: 0.0,
      isPopular: true,
    ),
    ItemData(
      itemName: "Clams",
      price: 5.99,
      discount: 0.0,
      isPopular: false,
    ),
    ItemData(
      itemName: "Oysters",
      price: 6.99,
      discount: 0.0,
      isPopular: true,
    ),
    ItemData(
      itemName: "Crab",
      price: 12.99,
      discount: 0.0,
      isPopular: true,
    ),
    ItemData(
      itemName: "Squid",
      price: 7.49,
      discount: 0.0,
      isPopular: false,
    ),
    ItemData(
      itemName: "Octopus",
      price: 9.99,
      discount: 0.0,
      isPopular: false,
    ),
   
  ],
),

  RestaurantData(
  restaurantName: "Green Grocers",
  tagline: "Fresh Produce Daily",
  items: [
    ItemData(
      itemName: "Organic Vegetables",
      price: 3.49,
      discount: 0.0,
      isPopular: true,
    ),
    ItemData(
      itemName: "Fresh Fruits",
      price: 2.99,
      discount: 0.0,
      isPopular: true,
    ),
    ItemData(
      itemName: "Leafy Greens",
      price: 2.49,
      discount: 0.0,
      isPopular: true,
    ),
    ItemData(
      itemName: "Root Vegetables",
      price: 2.99,
      discount: 0.0,
      isPopular: false,
    ),
    ItemData(
      itemName: "Herbs and Spices",
      price: 1.99,
      discount: 0.0,
      isPopular: true,
    ),
    ItemData(
      itemName: "Exotic Fruits",
      price: 4.99,
      discount: 0.0,
      isPopular: false,
    ),
    ItemData(
      itemName: "Fresh Juices",
      price: 2.49,
      discount: 0.0,
      isPopular: true,
    ),
    ItemData(
      itemName: "Dried Fruits",
      price: 3.99,
      discount: 0.1,
      isPopular: true,
    ),
    ItemData(
      itemName: "Organic Seeds",
      price: 4.49,
      discount: 0.0,
      isPopular: true,
    ),
    ItemData(
      itemName: "Vegetable Oils",
      price: 2.99,
      discount: 0.0,
      isPopular: false,
    ),
   
  ],
),

 RestaurantData(
  restaurantName: "Fashion Emporium",
  tagline: "Your Style Destination",
  items: [
    ItemData(
      itemName: "Designer Jeans",
      price: 49.99,
      discount: 0.0,
      isPopular: true,
    ),
    ItemData(
      itemName: "Fashionable Dresses",
      price: 39.99,
      discount: 0.0,
      isPopular: true,
    ),
    ItemData(
      itemName: "Stylish Accessories",
      price: 19.99,
      discount: 0.0,
      isPopular: true,
    ),
    ItemData(
      itemName: "Trendy Footwear",
      price: 29.99,
      discount: 0.0,
      isPopular: true,
    ),
    ItemData(
      itemName: "Designer Handbags",
      price: 59.99,
      discount: 0.0,
      isPopular: true,
    ),
    ItemData(
      itemName: "Sunglasses",
      price: 9.99,
      discount: 0.0,
      isPopular: false,
    ),
    ItemData(
      itemName: "Wrist Watches",
      price: 29.99,
      discount: 0.0,
      isPopular: true,
    ),
    ItemData(
      itemName: "Fashion Jewelry",
      price: 14.99,
      discount: 0.0,
      isPopular: false,
    ),
    ItemData(
      itemName: "Formal Suits",
      price: 79.99,
      discount: 0.0,
      isPopular: true,
    ),
    ItemData(
      itemName: "Casual Wear",
      price: 34.99,
      discount: 0.0,
      isPopular: true,
    ),
    
  ],
),

  RestaurantData(
  restaurantName: "Meat Master",
  tagline: "Quality Meat Shop",
  items: [
    ItemData(
      itemName: "Premium Beef Steak",
      price: 12.99,
      discount: 0.0,
      isPopular: true,
    ),
    ItemData(
      itemName: "Tender Chicken Breast",
      price: 7.99,
      discount: 0.0,
      isPopular: true,
    ),
    ItemData(
      itemName: "Fresh Lamb Chops",
      price: 10.99,
      discount: 0.0,
      isPopular: true,
    ),
    ItemData(
      itemName: "Pork Tenderloin",
      price: 9.99,
      discount: 0.0,
      isPopular: false,
    ),
    ItemData(
      itemName: "Ground Turkey",
      price: 6.99,
      discount: 0.0,
      isPopular: true,
    ),
    ItemData(
      itemName: "Sausages",
      price: 4.99,
      discount: 0.0,
      isPopular: false,
    ),
    ItemData(
      itemName: "Bacon Strips",
      price: 5.99,
      discount: 0.0,
      isPopular: true,
    ),
    ItemData(
      itemName: "Turkey Drumsticks",
      price: 8.99,
      discount: 0.0,
      isPopular: true,
    ),
    ItemData(
      itemName: "Salami",
      price: 7.49,
      discount: 0.0,
      isPopular: false,
    ),
    ItemData(
      itemName: "Marinated Ribs",
      price: 11.99,
      discount: 0.0,
      isPopular: false,
    ),
   
  ],
),

 RestaurantData(
  restaurantName: "Fresh Bakes Bakery",
  tagline: "Baked with Love",
  items: [
    ItemData(
      itemName: "Chocolate Chip Cookies",
      price: 1.99,
      discount: 0.0,
      isPopular: true,
    ),
    ItemData(
      itemName: "Fresh Bread Loaves",
      price: 2.49,
      discount: 0.0,
      isPopular: true,
    ),
    ItemData(
      itemName: "Delicious Pastries",
      price: 2.99,
      discount: 0.0,
      isPopular: true,
    ),
    ItemData(
      itemName: "Cupcakes",
      price: 1.49,
      discount: 0.0,
      isPopular: false,
    ),
    ItemData(
      itemName: "Pies and Tarts",
      price: 3.99,
      discount: 0.1,
      isPopular: true,
    ),
    ItemData(
      itemName: "Fresh Donuts",
      price: 1.29,
      discount: 0.0,
      isPopular: false,
    ),
    ItemData(
      itemName: "Artisanal Cakes",
      price: 12.99,
      discount: 0.0,
      isPopular: true,
    ),
    ItemData(
      itemName: "Bread Rolls",
      price: 1.79,
      discount: 0.0,
      isPopular: true,
    ),
    ItemData(
      itemName: "Croissants",
      price: 2.99,
      discount: 0.0,
      isPopular: false,
    ),
    ItemData(
      itemName: "Muffins",
      price: 1.49,
      discount: 0.0,
      isPopular: false,
    ),
   
  ],
),

];









