class ItemData {
  final String itemName;
  final String tagline;
  final double price;
  final String imageAsset;

  ItemData({
    required this.itemName,
    required this.tagline,
    required this.price,
    required this.imageAsset,
  });
}

List<ItemData> itemsList = [
  ItemData(
    itemName: "Item 1",
    tagline: "Tagline for Item 1",
    price: 10.0,
    imageAsset: "Assets/App_images/offers.png",
  ),
  ItemData(
    itemName: "Item 2",
    tagline: "Tagline for Item 2",
    price: 15.0,
    imageAsset: "Assets/App_images/Emoji.png",
  ),
   ItemData(
    itemName: "Item 3",
    tagline: "Tagline for Item 2",
    price: 15.0,
    imageAsset: "Assets/App_images/offers.png",
  ),
   ItemData(
    itemName: "Item 4",
    tagline: "Tagline for Item 2",
    price: 15.0,
    imageAsset: "Assets/App_images/Emoji.png",
  ),
   ItemData(
    itemName: "Item 5",
    tagline: "Tagline for Item 2",
    price: 15.0,
    imageAsset: "Assets/App_images/offers.png",
  ),
   ItemData(
    itemName: "Item 6",
    tagline: "Tagline for Item 2",
    price: 15.0,
    imageAsset: "Assets/App_images/Emoji.png",
  ),
  // Add more items here
];
