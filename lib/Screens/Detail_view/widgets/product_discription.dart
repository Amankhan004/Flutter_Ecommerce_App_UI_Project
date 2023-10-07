import 'package:ecommerce_app_complete_ui_project/Data/category_data/restaurants_data.dart';
import 'package:ecommerce_app_complete_ui_project/Screens/favourite_screen/widgets/favourites.dart';
import 'package:flutter/material.dart';

class ProductDescription extends StatefulWidget {
  final Color selectedColor;
  final ItemData itemData;
  final Function(bool) onFavoriteChanged; // Callback function
  final int itemIndex; // Add itemIndex property

  const ProductDescription({
    Key? key,
    required this.selectedColor,
    required this.itemData,
    required this.onFavoriteChanged,
    required this.itemIndex, // Pass the itemIndex
  }) : super(key: key);

  @override
  _ProductDescriptionState createState() => _ProductDescriptionState();
}

class _ProductDescriptionState extends State<ProductDescription> {
  bool showFullDescription = false;
  bool isFavorited = false;

  @override
  Widget build(BuildContext context) {
    ItemData itemData = widget.itemData;

    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.only(top: 20),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    itemData.itemDescriptionHeading,
                    style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 24),
                  ),
                ),
              ],
            ),
          ),
          Align(
        alignment: Alignment.centerRight,
        child: GestureDetector(
         onTap: () {
  setState(() {
    isFavorited = !isFavorited;

    // Add or remove itemData from favorites list
    if (isFavorited) {
      addToFavorites(widget.itemData);
    } else {
      removeFromFavorites(widget.itemData);
    }

    // Call the callback function to pass the data
    widget.onFavoriteChanged(isFavorited);
  });
},
          child: Container(
            width: 64,
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: isFavorited ? Colors.red : const Color.fromARGB(255, 252, 212, 212),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            child: Icon(
              isFavorited ? Icons.favorite : Icons.favorite_border,
              color: Colors.white,
            ),
          ),
        ),
      ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 64),
            child: Text(
              showFullDescription ? itemData.itemDescription : itemData.itemDescription.toString(),
              style: const TextStyle(fontSize: 16, color: Color.fromARGB(255, 97, 97, 97)),
              maxLines: showFullDescription ? null : 3,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: InkWell(
                onTap: () {
                  setState(() {
                    showFullDescription = !showFullDescription;
                  });
                },
                child: Row(
                  children: [
                    Text(
                      showFullDescription ? "See Less Details" : "See More Details",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: widget.selectedColor,
                      ),
                    ),
                    const SizedBox(width: 2),
                    Icon(
                      showFullDescription ? Icons.arrow_upward : Icons.arrow_downward,
                      size: 13,
                      color: widget.selectedColor,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}