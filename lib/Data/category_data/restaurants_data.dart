class ItemData {
  final String itemName;
  final double price;
  final double discount;
  final bool isPopular;
  final double mostExpensive;
  final String itemImage;
  final String itemDescriptionHeading;
  final String itemDescription;

  ItemData({
    required this.itemName,
    required this.price,
    required this.discount,
    required this.isPopular,
    required this.mostExpensive,
    required this.itemImage,
    required this.itemDescriptionHeading,
    required this.itemDescription,
  });
}

class RestaurantData {
  final String restaurantName;
  final String tagline;
  final List<ItemData> items;
  final String restaurantImage;

  RestaurantData({
    required this.restaurantName,
    required this.tagline,
    required this.items,
    required this.restaurantImage,
  });
}

List<RestaurantData> restaurantsList = [
 RestaurantData(
  restaurantName: "KFC",
  tagline: "Finger Lickin' Good",
  restaurantImage: "Assets/App_images/Restaurants/kfc.png",
  items: [
    ItemData(
      itemName: "Original Recipe Chicken",
      price: 5.99,
      discount: 1.0,
      isPopular: true,
      mostExpensive: 5.99,
      itemImage:
          "Assets/App_images/Restaurants/KFC/th-removebg-preview.png",
      itemDescriptionHeading: "Delicious Fried Chicken",
      itemDescription:
          "Enjoy our famous Original Recipe Chicken, made with a secret blend of 11 herbs and spices. It's crispy on the outside and tender on the inside, providing a mouthwatering experience with every bite. Satisfy your chicken cravings today!",
    ),
    ItemData(
      itemName: "Chicken Tenders",
      price: 4.99,
      discount: 0.5,
      isPopular: false,
      mostExpensive: 5.99,
      itemImage:
          "Assets/App_images/Restaurants/KFC/th-removebg-preview (1).png",
      itemDescriptionHeading: "Tender and Crispy",
      itemDescription:
          "Our Chicken Tenders are perfectly seasoned and fried to a golden crisp. Dip them in your favorite sauce for an extra burst of flavor.",
    ),
    ItemData(
      itemName: "Spicy Chicken Sandwich",
      price: 6.49,
      discount: 0.0,
      isPopular: true,
      mostExpensive: 6.49,
      itemImage:
          "Assets/App_images/Restaurants/KFC/th-removebg-preview (2).png",
      itemDescriptionHeading: "Spice Up Your Meal",
      itemDescription:
          "Craving some heat? Try our Spicy Chicken Sandwich. It's a flavorful combination of a spicy chicken patty, fresh lettuce, and creamy mayo, all in a soft bun.",
    ),
    ItemData(
      itemName: "Mashed Potatoes",
      price: 2.99,
      discount: 0.0,
      isPopular: false,
      mostExpensive: 6.49,
      itemImage:
          "Assets/App_images/Restaurants/KFC/th-removebg-preview (3).png",
      itemDescriptionHeading: "Creamy Mashed Potatoes",
      itemDescription:
          "Our creamy mashed potatoes are the perfect side dish to complement your meal. Made with real potatoes and rich gravy.",
    ),
    ItemData(
      itemName: "Coleslaw",
      price: 2.49,
      discount: 0.0,
      isPopular: false,
      mostExpensive: 6.49,
      itemImage:
          "Assets/App_images/Restaurants/KFC/th-removebg-preview (4).png",
      itemDescriptionHeading: "Refreshing Coleslaw",
      itemDescription:
          "Looking for something fresh and crunchy? Our coleslaw is a delightful blend of cabbage and carrots, tossed in a tangy dressing.",
    ),
    ItemData(
      itemName: "Famous Bowl",
      price: 5.99,
      discount: 0.0,
      isPopular: false,
      mostExpensive: 6.49,
      itemImage:
          "Assets/App_images/Restaurants/KFC/th-removebg-preview (5).png",
      itemDescriptionHeading: "Satisfying Famous Bowl",
      itemDescription:
          "Indulge in our Famous Bowl, featuring layers of mashed potatoes, sweet corn, crispy chicken, and gravy. It's comfort food at its best.",
    ),
    ItemData(
      itemName: "Twister Wrap",
      price: 4.79,
      discount: 0.0,
      isPopular: false,
      mostExpensive: 6.49,
      itemImage:
          "Assets/App_images/Restaurants/KFC/th-removebg-preview (6).png",
      itemDescriptionHeading: "Wrap it Up!",
      itemDescription:
          "Try our Twister Wrap, a delightful combination of chicken tenders, fresh veggies, and your choice of sauce, all wrapped in a soft tortilla.",
    ),
    ItemData(
      itemName: "Zinger Burger",
      price: 3.99,
      discount: 0.0,
      isPopular: true,
      mostExpensive: 6.49,
      itemImage:
          "Assets/App_images/Restaurants/KFC/th-removebg-preview (7).png",
      itemDescriptionHeading: "Spicy Zinger Burger",
      itemDescription:
          "For a fiery kick, bite into our Zinger Burger. It's a spicy chicken patty, lettuce, and mayo, all in a toasted bun.",
    ),
    ItemData(
      itemName: "Chicken Popcorn",
      price: 3.49,
      discount: 0.0,
      isPopular: false,
      mostExpensive: 6.49,
      itemImage:
          "Assets/App_images/Restaurants/KFC/th-removebg-preview (8).png",
      itemDescriptionHeading: "Irresistible Popcorn Chicken",
      itemDescription:
          "Our Chicken Popcorn is bite-sized and bursting with flavor. Perfect for snacking or adding to your meal.",
    ),
    ItemData(
      itemName: "Iced Tea",
      price: 1.99,
      discount: 0.0,
      isPopular: true,
      mostExpensive: 6.49,
      itemImage:
          "Assets/App_images/Restaurants/KFC/th-removebg-preview (9).png",
      itemDescriptionHeading: "Refreshing Iced Tea",
      itemDescription:
          "Quench your thirst with our refreshing Iced Tea. It's the perfect beverage to complement your KFC meal.",
    ),
  ],
),
 RestaurantData(
  restaurantName: "McDonald's",
  tagline: "I'm Lovin' It",
  restaurantImage: "Assets/App_images/Restaurants/mcdonalds.png",
  items: [
    ItemData(
      itemName: "Big Mac",
      price: 3.99,
      discount: 0.0,
      isPopular: true,
      mostExpensive: 3.99,
      itemImage:
          "Assets/App_images/Restaurants/Mcdonalds/th-removebg-preview.png",
      itemDescriptionHeading: "The Iconic Big Mac",
      itemDescription:
          "Indulge in the iconic Big Mac, featuring two beef patties, special sauce, lettuce, cheese, pickles, and onions, all on a sesame seed bun. It's a classic that never goes out of style.",
    ),
    ItemData(
      itemName: "Chicken McNuggets",
      price: 2.99,
      discount: 0.0,
      isPopular: true,
      mostExpensive: 3.99,
      itemImage:
          "Assets/App_images/Restaurants/Mcdonalds/th-removebg-preview (1).png",
      itemDescriptionHeading: "Irresistible Chicken McNuggets",
      itemDescription:
          "Savor the deliciousness of our Chicken McNuggets. Made with tender, white meat chicken, they're perfect for dipping in your favorite sauce.",
    ),
    ItemData(
      itemName: "Quarter Pounder with Cheese",
      price: 4.29,
      discount: 0.0,
      isPopular: false,
      mostExpensive: 4.29,
      itemImage:
          "Assets/App_images/Restaurants/Mcdonalds/th-removebg-preview (2).png",
      itemDescriptionHeading: "Quarter Pounder Bliss",
      itemDescription:
          "Try our Quarter Pounder with Cheese, featuring a juicy beef patty, cheese, pickles, onions, and ketchup, all on a sesame seed bun.",
    ),
    ItemData(
      itemName: "McDouble",
      price: 1.99,
      discount: 0.0,
      isPopular: false,
      mostExpensive: 4.29,
      itemImage:
          "Assets/App_images/Restaurants/Mcdonalds/th-removebg-preview (3).png",
      itemDescriptionHeading: "McDouble Delight",
      itemDescription:
          "The McDouble is a delicious burger featuring two beef patties, cheese, onions, pickles, and ketchup. It's simple and satisfying.",
    ),
    ItemData(
      itemName: "Filet-O-Fish",
      price: 3.79,
      discount: 0.0,
      isPopular: false,
      mostExpensive: 4.29,
      itemImage:
          "Assets/App_images/Restaurants/Mcdonalds/th-removebg-preview (4).png",
      itemDescriptionHeading: "Fish Lover's Choice",
      itemDescription:
          "For a seafood twist, try our Filet-O-Fish. It features a fish fillet, tartar sauce, and a soft steamed bun.",
    ),
    ItemData(
      itemName: "French Fries",
      price: 1.49,
      discount: 0.0,
      isPopular: true,
      mostExpensive: 4.29,
      itemImage:
          "Assets/App_images/Restaurants/Mcdonalds/th-removebg-preview (5).png",
      itemDescriptionHeading: "Golden French Fries",
      itemDescription:
          "Our golden French Fries are the perfect side to accompany your meal. Crispy on the outside, fluffy on the inside.",
    ),
    ItemData(
      itemName: "Apple Pie",
      price: 0.99,
      discount: 0.0,
      isPopular: true,
      mostExpensive: 4.29,
      itemImage:
          "Assets/App_images/Restaurants/Mcdonalds/th-removebg-preview (6).png",
      itemDescriptionHeading: "Warm Apple Pie",
      itemDescription:
          "End your meal on a sweet note with our warm and delicious Apple Pie. It's the perfect dessert.",
    ),
    ItemData(
      itemName: "Hot Caramel Sundae",
      price: 2.49,
      discount: 0.0,
      isPopular: false,
      mostExpensive: 4.29,
      itemImage:
          "Assets/App_images/Restaurants/Mcdonalds/th-removebg-preview (7).png",
      itemDescriptionHeading: "Sundae Delight",
      itemDescription:
          "Treat yourself to our Hot Caramel Sundae, featuring creamy vanilla ice cream drizzled with warm caramel sauce.",
    ),
    ItemData(
      itemName: "Mocha Frappé",
      price: 3.29,
      discount: 0.0,
      isPopular: false,
      mostExpensive: 4.29,
      itemImage:
          "Assets/App_images/Restaurants/Mcdonalds/th-removebg-preview (8).png",
      itemDescriptionHeading: "Chilled Mocha Frappé",
      itemDescription:
          "Need a refreshing pick-me-up? Try our Mocha Frappé, a delightful blend of coffee and chocolate flavors.",
    ),
    ItemData(
      itemName: "Iced Coffee",
      price: 1.79,
      discount: 0.0,
      isPopular: false,
      mostExpensive: 4.29,
      itemImage:
          "Assets/App_images/Restaurants/Mcdonalds/th-removebg-preview (9).png",
      itemDescriptionHeading: "Iced Coffee Bliss",
      itemDescription:
          "Stay cool with our Iced Coffee, made with premium Arabica coffee beans. It's the perfect caffeinated beverage for any time of day.",
    ),
  ],
),
RestaurantData(
  restaurantName: "Imtiaz Super Market",
  tagline: "Your Shopping Paradise",
  restaurantImage: "Assets/App_images/Restaurants/imtiazsupermarket.png",
  items: [
    ItemData(
      itemName: "Fresh Fruits",
      price: 2.99,
      discount: 0.0,
      isPopular: true,
      mostExpensive: 2.99,
      itemImage:
          "Assets/App_images/Restaurants/imtiazsupermarket/th-removebg-preview.png",
      itemDescriptionHeading: "Delicious Fresh Fruits",
      itemDescription:
          "Explore a variety of fresh and delicious fruits at Imtiaz Super Market. From apples to oranges and more, we have the freshest options for you.",
    ),
    ItemData(
      itemName: "Organic Vegetables",
      price: 2.49,
      discount: 0.1,
      isPopular: true,
      mostExpensive: 2.99,
      itemImage:
          "Assets/App_images/Restaurants/imtiazsupermarket/th-removebg-preview (1).png",
      itemDescriptionHeading: "Healthy Organic Vegetables",
      itemDescription:
          "Choose from a selection of organic vegetables that are grown with care. They're not only healthy but also environmentally friendly.",
    ),
    ItemData(
      itemName: "Milk and Dairy",
      price: 1.99,
      discount: 0.0,
      isPopular: true,
      mostExpensive: 2.99,
      itemImage:
          "Assets/App_images/Restaurants/imtiazsupermarket/th-removebg-preview (2).png",
      itemDescriptionHeading: "Fresh Milk and Dairy Products",
      itemDescription:
          "Find fresh milk and a range of dairy products at Imtiaz Super Market. Enjoy the wholesome goodness of dairy in every bite.",
    ),
    ItemData(
      itemName: "Bread Loaf",
      price: 1.49,
      discount: 0.0,
      isPopular: false,
      mostExpensive: 2.99,
      itemImage:
          "Assets/App_images/Restaurants/imtiazsupermarket/th-removebg-preview (3).png",
      itemDescriptionHeading: "Freshly Baked Bread Loaf",
      itemDescription:
          "Our freshly baked bread loaves are perfect for making sandwiches or enjoying with your favorite spreads.",
    ),
    ItemData(
      itemName: "Fresh Eggs",
      price: 1.99,
      discount: 0.0,
      isPopular: true,
      mostExpensive: 2.99,
      itemImage:
          "Assets/App_images/Restaurants/imtiazsupermarket/th-removebg-preview (4).png",
      itemDescriptionHeading: "Farm-Fresh Eggs",
      itemDescription:
          "Discover farm-fresh eggs at Imtiaz Super Market. They're packed with nutrition and are great for various culinary delights.",
    ),
    ItemData(
      itemName: "Cereals",
      price: 3.99,
      discount: 0.2,
      isPopular: false,
      mostExpensive: 3.99,
      itemImage:
          "Assets/App_images/Restaurants/imtiazsupermarket/th-removebg-preview (5).png",
      itemDescriptionHeading: "Nutritious Cereals",
      itemDescription:
          "Start your day right with our selection of nutritious cereals. They're a great source of energy and essential nutrients.",
    ),
    ItemData(
      itemName: "Pasta",
      price: 2.99,
      discount: 0.0,
      isPopular: false,
      mostExpensive: 3.99,
      itemImage:
          "Assets/App_images/Restaurants/imtiazsupermarket/th-removebg-preview (6).png",
      itemDescriptionHeading: "Pasta for Every Occasion",
      itemDescription:
          "From spaghetti to penne, we have a variety of pasta options to satisfy your pasta cravings. Explore our selection today.",
    ),
    ItemData(
      itemName: "Snacks",
      price: 2.49,
      discount: 0.0,
      isPopular: true,
      mostExpensive: 3.99,
      itemImage:
          "Assets/App_images/Restaurants/imtiazsupermarket/th-removebg-preview (7).png",
      itemDescriptionHeading: "Tasty Snack Options",
      itemDescription:
          "Discover a range of tasty snacks at Imtiaz Super Market. They're perfect for munching on whenever hunger strikes.",
    ),
    ItemData(
      itemName: "Beverages",
      price: 1.99,
      discount: 0.0,
      isPopular: true,
      mostExpensive: 3.99,
      itemImage:
          "Assets/App_images/Restaurants/imtiazsupermarket/th-removebg-preview (8).png",
      itemDescriptionHeading: "Refreshing Beverages",
      itemDescription:
          "Quench your thirst with our refreshing beverage options. From juices to soft drinks, we have something for everyone.",
    ),
    ItemData(
      itemName: "Cleaning Supplies",
      price: 4.99,
      discount: 0.0,
      isPopular: false,
      mostExpensive: 4.99,
      itemImage:
          "Assets/App_images/Restaurants/imtiazsupermarket/th-removebg-preview (9).png",
      itemDescriptionHeading: "Effective Cleaning Supplies",
      itemDescription:
          "Keep your home clean and tidy with our range of effective cleaning supplies. They make housekeeping a breeze.",
    ),
  ],
),
RestaurantData(
  restaurantName: "Ocean Fish Market",
  tagline: "Seafood Specialists",
  restaurantImage: "Assets/App_images/Restaurants/ocean fish market.png",
  items: [
    ItemData(
      itemName: "Fresh Salmon",
      price: 9.99,
      discount: 0.0,
      isPopular: true,
      mostExpensive: 9.99,
      itemImage:
          "Assets/App_images/Restaurants/oceanfishmarket/th-removebg-preview.png",
      itemDescriptionHeading: "Premium Fresh Salmon",
      itemDescription:
          "Indulge in the finest quality fresh salmon at Ocean Fish Market. Known for its taste and health benefits, it's a seafood favorite.",
    ),
    ItemData(
      itemName: "Shrimp",
      price: 7.99,
      discount: 0.0,
      isPopular: true,
      mostExpensive: 9.99,
      itemImage:
          "Assets/App_images/Restaurants/oceanfishmarket/th-removebg-preview (1).png",
      itemDescriptionHeading: "Succulent Shrimp",
      itemDescription:
          "Enjoy succulent shrimp, a versatile and delicious seafood choice, at Ocean Fish Market.",
    ),
    ItemData(
      itemName: "Tilapia",
      price: 6.49,
      discount: 0.0,
      isPopular: true,
      mostExpensive: 9.99,
      itemImage:
          "Assets/App_images/Restaurants/oceanfishmarket/th-removebg-preview (2).png",
      itemDescriptionHeading: "Delicate Tilapia",
      itemDescription:
          "Discover the delicate flavor of tilapia, a perfect option for seafood enthusiasts at Ocean Fish Market.",
    ),
    ItemData(
      itemName: "Cod",
      price: 8.99,
      discount: 0.0,
      isPopular: false,
      mostExpensive: 9.99,
      itemImage:
          "Assets/App_images/Restaurants/oceanfishmarket/th-removebg-preview (3).png",
      itemDescriptionHeading: "Fresh Cod",
      itemDescription:
          "Savor the freshness of cod, a classic seafood choice, at Ocean Fish Market.",
    ),
    ItemData(
      itemName: "Lobster",
      price: 15.99,
      discount: 0.0,
      isPopular: true,
      mostExpensive: 15.99,
      itemImage:
          "Assets/App_images/Restaurants/oceanfishmarket/th-removebg-preview (4).png",
      itemDescriptionHeading: "Exquisite Lobster",
      itemDescription:
          "Experience the exquisite taste of lobster, a seafood delicacy, at Ocean Fish Market.",
    ),
    ItemData(
      itemName: "Clams",
      price: 5.99,
      discount: 0.0,
      isPopular: false,
      mostExpensive: 15.99,
      itemImage:
          "Assets/App_images/Restaurants/oceanfishmarket/th-removebg-preview (5).png",
      itemDescriptionHeading: "Fresh Clams",
      itemDescription:
          "Satisfy your seafood cravings with fresh clams, a delightful choice, at Ocean Fish Market.",
    ),
    ItemData(
      itemName: "Oysters",
      price: 6.99,
      discount: 0.0,
      isPopular: true,
      mostExpensive: 15.99,
      itemImage:
          "Assets/App_images/Restaurants/oceanfishmarket/th-removebg-preview (6).png",
      itemDescriptionHeading: "Plump Oysters",
      itemDescription:
          "Indulge in plump oysters, known for their unique taste, at Ocean Fish Market.",
    ),
    ItemData(
      itemName: "Crab",
      price: 12.99,
      discount: 0.0,
      isPopular: true,
      mostExpensive: 15.99,
      itemImage:
          "Assets/App_images/Restaurants/oceanfishmarket/th-removebg-preview (7).png",
      itemDescriptionHeading: "Delicious Crab",
      itemDescription:
          "Savor the deliciousness of crab, a seafood classic, at Ocean Fish Market.",
    ),
    ItemData(
      itemName: "Squid",
      price: 7.49,
      discount: 0.0,
      isPopular: false,
      mostExpensive: 15.99,
      itemImage:
          "Assets/App_images/Restaurants/oceanfishmarket/th-removebg-preview (8).png",
      itemDescriptionHeading: "Tender Squid",
      itemDescription:
          "Try tender squid, a seafood delicacy, at Ocean Fish Market.",
    ),
    ItemData(
      itemName: "Palette",
      price: 9.99,
      discount: 0.0,
      isPopular: false,
      mostExpensive: 15.99,
      itemImage:
          "Assets/App_images/Restaurants/oceanfishmarket/th-removebg-preview (9).png",
      itemDescriptionHeading: "Colorful Palette",
      itemDescription:
          "Explore a colorful palette of seafood choices at Ocean Fish Market.",
    ),
  ],
),
 RestaurantData(
  restaurantName: "Green Grocers",
  tagline: "Fresh Produce Daily",
  restaurantImage: "Assets/App_images/Restaurants/green grocers.png",
  items: [
    ItemData(
      itemName: "Organic Vegetables",
      price: 3.49,
      discount: 0.0,
      isPopular: true,
      mostExpensive: 3.49,
      itemImage: "Assets/App_images/Restaurants/greengrocers/th-removebg-preview.png",
      itemDescriptionHeading: "Certified Organic Vegetables",
      itemDescription: "Discover a wide range of certified organic vegetables that are healthy and sustainably grown for your well-being.",
    ),
    ItemData(
      itemName: "Fresh Fruits",
      price: 2.99,
      discount: 0.0,
      isPopular: true,
      mostExpensive: 3.49,
      itemImage: "Assets/App_images/Restaurants/greengrocers/th-removebg-preview (1).png",
      itemDescriptionHeading: "Handpicked Fresh Fruits",
      itemDescription: "Our selection of fresh fruits is carefully handpicked to ensure quality and taste. Enjoy the goodness of nature.",
    ),
    ItemData(
      itemName: "Leafy Greens",
      price: 2.49,
      discount: 0.0,
      isPopular: true,
      mostExpensive: 3.49,
      itemImage: "Assets/App_images/Restaurants/greengrocers/th-removebg-preview (2).png",
      itemDescriptionHeading: "Nutrient-Rich Leafy Greens",
      itemDescription: "Boost your health with nutrient-rich leafy greens. They're perfect for salads and wholesome meals.",
    ),
    ItemData(
      itemName: "Root Vegetables",
      price: 2.99,
      discount: 0.0,
      isPopular: false,
      mostExpensive: 3.49,
      itemImage: "Assets/App_images/Restaurants/greengrocers/th-removebg-preview (3).png",
      itemDescriptionHeading: "Fresh Root Vegetables",
      itemDescription: "Explore a variety of fresh root vegetables that are ideal for cooking delicious and hearty dishes.",
    ),
    ItemData(
      itemName: "Herbs and Spices",
      price: 1.99,
      discount: 0.0,
      isPopular: true,
      mostExpensive: 3.49,
      itemImage: "Assets/App_images/Restaurants/greengrocers/th-removebg-preview (4).png",
      itemDescriptionHeading: "Aromatic Herbs and Spices",
      itemDescription: "Enhance your culinary creations with our aromatic herbs and spices. They add flavor and depth to your dishes.",
    ),
    ItemData(
      itemName: "Exotic Fruits",
      price: 4.99,
      discount: 0.0,
      isPopular: false,
      mostExpensive: 4.99,
      itemImage: "Assets/App_images/Restaurants/greengrocers/th-removebg-preview (5).png",
      itemDescriptionHeading: "Exquisite Exotic Fruits",
      itemDescription: "Treat yourself to the exotic flavors of rare fruits. They're a delightful indulgence for fruit enthusiasts.",
    ),
    ItemData(
      itemName: "Fresh Juices",
      price: 2.49,
      discount: 0.0,
      isPopular: true,
      mostExpensive: 4.99,
      itemImage: "Assets/App_images/Restaurants/greengrocers/th-removebg-preview (6).png",
      itemDescriptionHeading: "Naturally Fresh Juices",
      itemDescription: "Quench your thirst with our naturally fresh juices made from the finest fruits. Stay refreshed and healthy.",
    ),
    ItemData(
      itemName: "Dried Fruits",
      price: 3.99,
      discount: 0.1,
      isPopular: true,
      mostExpensive: 4.99,
      itemImage: "Assets/App_images/Restaurants/greengrocers/th-removebg-preview (7).png",
      itemDescriptionHeading: "Wholesome Dried Fruits",
      itemDescription: "Satisfy your snack cravings with our wholesome dried fruits. They're perfect for on-the-go energy.",
    ),
    ItemData(
      itemName: "Organic Seeds",
      price: 4.49,
      discount: 0.0,
      isPopular: true,
      mostExpensive: 4.99,
      itemImage: "Assets/App_images/Restaurants/greengrocers/th-removebg-preview (8).png",
      itemDescriptionHeading: "Nutrient-Packed Organic Seeds",
      itemDescription: "Boost your nutrition with our organic seeds. They're packed with essential nutrients for a healthy lifestyle.",
    ),
    ItemData(
      itemName: "Vegetable Oils",
      price: 2.99,
      discount: 0.0,
      isPopular: false,
      mostExpensive: 4.99,
      itemImage: "Assets/App_images/Restaurants/greengrocers/th-removebg-preview (9).png",
      itemDescriptionHeading: "High-Quality Vegetable Oils",
      itemDescription: "Choose from a selection of high-quality vegetable oils to enhance your cooking and culinary creations.",
    ),
  ],
),
RestaurantData(
  restaurantName: "Fashion Emporium",
  tagline: "Your Style Destination",
  restaurantImage: "Assets/App_images/Restaurants/fashion emporium.png",
  items: [
    ItemData(
      itemName: "Designer Jeans",
      price: 49.99,
      discount: 0.0,
      isPopular: true,
      mostExpensive: 49.99,
      itemImage: "Assets/App_images/Restaurants/fashionemporium/th-removebg-preview.png",
      itemDescriptionHeading: "Designer Denim",
      itemDescription: "Elevate your style with our collection of designer jeans. Crafted with precision, these jeans are a statement of luxury and fashion.",
    ),
    ItemData(
      itemName: "Fashionable Dresses",
      price: 39.99,
      discount: 0.0,
      isPopular: true,
      mostExpensive: 49.99,
      itemImage: "Assets/App_images/Restaurants/fashionemporium/th-removebg-preview (1).png",
      itemDescriptionHeading: "Chic Dresses",
      itemDescription: "Discover chic and fashionable dresses that are perfect for any occasion. Be the center of attention with our trendy dresses.",
    ),
    ItemData(
      itemName: "Stylish Accessories",
      price: 19.99,
      discount: 0.0,
      isPopular: true,
      mostExpensive: 49.99,
      itemImage: "Assets/App_images/Restaurants/fashionemporium/th-removebg-preview (2).png",
      itemDescriptionHeading: "Fashion Accessories",
      itemDescription: "Complete your look with our stylish accessories. From belts to scarves, our accessories add a touch of sophistication to your outfit.",
    ),
    ItemData(
      itemName: "Trendy Footwear",
      price: 29.99,
      discount: 0.0,
      isPopular: true,
      mostExpensive: 49.99,
      itemImage: "Assets/App_images/Restaurants/fashionemporium/th-removebg-preview (3).png",
      itemDescriptionHeading: "Trendsetting Footwear",
      itemDescription: "Step out in style with our trendy footwear collection. These shoes are not just comfortable but also fashion-forward.",
    ),
    ItemData(
      itemName: "Designer Handbags",
      price: 59.99,
      discount: 0.0,
      isPopular: true,
      mostExpensive: 59.99,
      itemImage: "Assets/App_images/Restaurants/fashionemporium/th-removebg-preview (4).png",
      itemDescriptionHeading: "Luxury Handbags",
      itemDescription: "Indulge in luxury with our designer handbags. These handbags are a blend of style, elegance, and functionality.",
    ),
    ItemData(
      itemName: "Sunglasses",
      price: 9.99,
      discount: 0.0,
      isPopular: false,
      mostExpensive: 59.99,
      itemImage: "Assets/App_images/Restaurants/fashionemporium/th-removebg-preview (5).png",
      itemDescriptionHeading: "Fashionable Sunglasses",
      itemDescription: "Protect your eyes in style with our fashionable sunglasses. Find the perfect pair that suits your personality.",
    ),
    ItemData(
      itemName: "Wrist Watches",
      price: 29.99,
      discount: 0.0,
      isPopular: true,
      mostExpensive: 59.99,
      itemImage: "Assets/App_images/Restaurants/fashionemporium/th-removebg-preview (6).png",
      itemDescriptionHeading: "Timeless Wrist Watches",
      itemDescription: "Stay punctual and fashionable with our collection of timeless wristwatches. Elevate your look with these exquisite timepieces.",
    ),
    ItemData(
      itemName: "Fashion Jewelry",
      price: 14.99,
      discount: 0.0,
      isPopular: false,
      mostExpensive: 59.99,
      itemImage: "Assets/App_images/Restaurants/fashionemporium/th-removebg-preview (7).png",
      itemDescriptionHeading: "Elegant Fashion Jewelry",
      itemDescription: "Enhance your elegance with our fashion jewelry. These pieces are designed to complement your style and add a touch of glamour.",
    ),
    ItemData(
      itemName: "Formal Suits",
      price: 79.99,
      discount: 0.0,
      isPopular: true,
      mostExpensive: 79.99,
      itemImage: "Assets/App_images/Restaurants/fashionemporium/th-removebg-preview (8).png",
      itemDescriptionHeading: "Classic Formal Suits",
      itemDescription: "Make a lasting impression with our classic formal suits. Perfect for special occasions and professional gatherings.",
    ),
    ItemData(
      itemName: "Casual Wear",
      price: 34.99,
      discount: 0.0,
      isPopular: true,
      mostExpensive: 79.99,
      itemImage: "Assets/App_images/Restaurants/fashionemporium/th-removebg-preview (9).png",
      itemDescriptionHeading: "Comfortable Casual Wear",
      itemDescription: "Stay comfortable and stylish with our casual wear collection. It's ideal for everyday fashion with a trendy twist.",
    ),
  ],
),
RestaurantData(
  restaurantName: "Meat Master",
  tagline: "Quality Meat Shop",
  restaurantImage: "Assets/App_images/Restaurants/meat master.png",
  items: [
    ItemData(
      itemName: "Premium Beef Steak",
      price: 12.99,
      discount: 0.0,
      isPopular: true,
      mostExpensive: 12.99,
      itemImage: "Assets/App_images/Restaurants/meatmaster/th-removebg-preview.png",
      itemDescriptionHeading: "Premium Beef Steak",
      itemDescription: "Indulge in the finest quality premium beef steak. Juicy, tender, and full of flavor, it's perfect for a gourmet dining experience.",
    ),
    ItemData(
      itemName: "Tender Chicken Breast",
      price: 7.99,
      discount: 0.0,
      isPopular: true,
      mostExpensive: 12.99,
      itemImage: "Assets/App_images/Restaurants/meatmaster/th-removebg-preview (1).png",
      itemDescriptionHeading: "Tender Chicken Breast",
      itemDescription: "Our tender chicken breast is ideal for your healthy and delicious meals. It's versatile and perfect for various culinary creations.",
    ),
    ItemData(
      itemName: "Fresh Lamb Chops",
      price: 10.99,
      discount: 0.0,
      isPopular: true,
      mostExpensive: 12.99,
      itemImage: "Assets/App_images/Restaurants/meatmaster/th-removebg-preview (2).png",
      itemDescriptionHeading: "Fresh Lamb Chops",
      itemDescription: "Savor the freshness of our lamb chops. They are carefully selected for their tenderness and exquisite taste.",
    ),
    ItemData(
      itemName: "Chicken Meat",
      price: 9.99,
      discount: 0.0,
      isPopular: false,
      mostExpensive: 12.99,
      itemImage: "Assets/App_images/Restaurants/meatmaster/th-removebg-preview (3).png",
      itemDescriptionHeading: "Chicken Meat",
      itemDescription: "Our chicken meat is a versatile choice for your culinary needs. It's perfect for a wide range of chicken-based dishes.",
    ),
    ItemData(
      itemName: "Ground Turkey",
      price: 6.99,
      discount: 0.0,
      isPopular: true,
      mostExpensive: 12.99,
      itemImage: "Assets/App_images/Restaurants/meatmaster/th-removebg-preview (4).png",
      itemDescriptionHeading: "Ground Turkey",
      itemDescription: "Discover the lean and delicious flavor of our ground turkey. It's a healthy choice for various recipes.",
    ),
    ItemData(
      itemName: "Sausages",
      price: 4.99,
      discount: 0.0,
      isPopular: false,
      mostExpensive: 12.99,
      itemImage: "Assets/App_images/Restaurants/meatmaster/th-removebg-preview (5).png",
      itemDescriptionHeading: "Sausages",
      itemDescription: "Enjoy our flavorful sausages made with the finest ingredients. They are perfect for grilling, breakfast, or any meal.",
    ),
    ItemData(
      itemName: "Fish Meat",
      price: 5.99,
      discount: 0.0,
      isPopular: true,
      mostExpensive: 12.99,
      itemImage: "Assets/App_images/Restaurants/meatmaster/th-removebg-preview (6).png",
      itemDescriptionHeading: "Fish Meat",
      itemDescription: "Delight in the taste of fresh fish meat. It's a versatile choice for seafood lovers and can be prepared in various ways.",
    ),
    ItemData(
      itemName: "Turkey Drumsticks",
      price: 8.99,
      discount: 0.0,
      isPopular: true,
      mostExpensive: 12.99,
      itemImage: "Assets/App_images/Restaurants/meatmaster/th-removebg-preview (7).png",
      itemDescriptionHeading: "Turkey Drumsticks",
      itemDescription: "Experience the succulence of our turkey drumsticks. They are great for roasting, grilling, or slow-cooking to perfection.",
    ),
    ItemData(
      itemName: "Salami",
      price: 7.49,
      discount: 0.0,
      isPopular: false,
      mostExpensive: 12.99,
      itemImage: "Assets/App_images/Restaurants/meatmaster/th-removebg-preview (8).png",
      itemDescriptionHeading: "Salami",
      itemDescription: "Indulge in the rich and savory flavor of our salami. It's a classic choice for sandwiches, appetizers, or charcuterie boards.",
    ),
    ItemData(
      itemName: "Marinated Ribs",
      price: 11.99,
      discount: 0.0,
      isPopular: false,
      mostExpensive: 12.99,
      itemImage: "Assets/App_images/Restaurants/meatmaster/th-removebg-preview (9).png",
      itemDescriptionHeading: "Marinated Ribs",
      itemDescription: "Get ready to barbecue with our marinated ribs. They are expertly seasoned for a mouthwatering barbecue experience.",
    ),
  ],
),
 RestaurantData(
  restaurantName: "Fresh Bakes Bakery",
  tagline: "Baked with Love",
  restaurantImage: "Assets/App_images/Restaurants/fresh bakes bakery.png",
  items: [
    ItemData(
      itemName: "Chocolate Chip Cookies",
      price: 1.99,
      discount: 0.0,
      isPopular: true,
      mostExpensive: 1.99,
      itemImage: "Assets/App_images/Restaurants/freshbakesbakery/th-removebg-preview.png",
      itemDescriptionHeading: "Chocolate Chip Cookies",
      itemDescription: "Indulge in the classic goodness of our chocolate chip cookies. They are baked to perfection with a generous amount of chocolate chips.",
    ),
    ItemData(
      itemName: "Fresh Bread Loaves",
      price: 2.49,
      discount: 0.0,
      isPopular: true,
      mostExpensive: 2.49,
      itemImage: "Assets/App_images/Restaurants/freshbakesbakery/th-removebg-preview (1).png",
      itemDescriptionHeading: "Fresh Bread Loaves",
      itemDescription: "Enjoy the aroma of freshly baked bread loaves. They are soft on the inside with a crusty exterior, perfect for sandwiches or to accompany a meal.",
    ),
    ItemData(
      itemName: "Delicious Pastries",
      price: 2.99,
      discount: 0.0,
      isPopular: true,
      mostExpensive: 2.99,
      itemImage: "Assets/App_images/Restaurants/freshbakesbakery/th-removebg-preview (2).png",
      itemDescriptionHeading: "Delicious Pastries",
      itemDescription: "Satisfy your sweet cravings with our delicious pastries. They come in a variety of flavors and are sure to delight your taste buds.",
    ),
    ItemData(
      itemName: "Cupcakes",
      price: 1.49,
      discount: 0.0,
      isPopular: false,
      mostExpensive: 2.99,
      itemImage: "Assets/App_images/Restaurants/freshbakesbakery/th-removebg-preview (3).png",
      itemDescriptionHeading: "Cupcakes",
      itemDescription: "Our cupcakes are a delightful treat for any occasion. They are moist, flavorful, and available in a range of flavors and frostings.",
    ),
    ItemData(
      itemName: "Pies and Tarts",
      price: 3.99,
      discount: 0.1,
      isPopular: true,
      mostExpensive: 3.99,
      itemImage: "Assets/App_images/Restaurants/freshbakesbakery/th-removebg-preview (4).png",
      itemDescriptionHeading: "Pies and Tarts",
      itemDescription: "Experience the perfect balance of sweet and savory with our pies and tarts. They are handmade with love and premium ingredients.",
    ),
    ItemData(
      itemName: "Fresh Donuts",
      price: 1.29,
      discount: 0.0,
      isPopular: false,
      mostExpensive: 3.99,
      itemImage: "Assets/App_images/Restaurants/freshbakesbakery/th-removebg-preview (5).png",
      itemDescriptionHeading: "Fresh Donuts",
      itemDescription: "Treat yourself to our freshly made donuts. They are light, fluffy, and available in various glazes and toppings.",
    ),
    ItemData(
      itemName: "Artisanal Cakes",
      price: 12.99,
      discount: 0.0,
      isPopular: true,
      mostExpensive: 12.99,
      itemImage: "Assets/App_images/Restaurants/freshbakesbakery/th-removebg-preview (6).png",
      itemDescriptionHeading: "Artisanal Cakes",
      itemDescription: "Celebrate special moments with our artisanal cakes. Each cake is a masterpiece, crafted with care and attention to detail.",
    ),
    ItemData(
      itemName: "Bread Rolls",
      price: 1.79,
      discount: 0.0,
      isPopular: true,
      mostExpensive: 12.99,
      itemImage: "Assets/App_images/Restaurants/freshbakesbakery/th-removebg-preview (7).png",
      itemDescriptionHeading: "Bread Rolls",
      itemDescription: "Our bread rolls are the perfect addition to any meal. They are soft, fluffy, and ideal for making sandwiches or enjoying with soups.",
    ),
    ItemData(
      itemName: "Croissants",
      price: 2.99,
      discount: 0.0,
      isPopular: false,
      mostExpensive: 12.99,
      itemImage: "Assets/App_images/Restaurants/freshbakesbakery/th-removebg-preview (8).png",
      itemDescriptionHeading: "Croissants",
      itemDescription: "Savor the buttery goodness of our croissants. They are flaky, golden, and perfect for a delightful breakfast or snack.",
    ),
    ItemData(
      itemName: "Muffins",
      price: 1.49,
      discount: 0.0,
      isPopular: false,
      mostExpensive: 12.99,
      itemImage: "Assets/App_images/Restaurants/freshbakesbakery/th-removebg-preview (9).png",
      itemDescriptionHeading: "Muffins",
      itemDescription: "Start your day with our freshly baked muffins. They are moist, flavorful, and available in a variety of tempting flavors."
    ),
  ],
)
];
