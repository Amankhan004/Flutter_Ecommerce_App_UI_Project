import 'package:ecommerce_app_complete_ui_project/Data/category_data/restaurants_data.dart';
import 'package:ecommerce_app_complete_ui_project/utils/App_colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FavouriteItems extends StatefulWidget {
  final List<ItemData> favoriteItems;

  FavouriteItems({required this.favoriteItems});

  @override
  State<FavouriteItems> createState() => _FavouriteItemsState();
}

class _FavouriteItemsState extends State<FavouriteItems> {
  bool isFavorited = true;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: List.generate(widget.favoriteItems.length, (index) {
            final itemData = widget.favoriteItems[index];

            return Container(
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.cardColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 3,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                leading: Image(
                  height: 90,
                  image: AssetImage(itemData.itemImage),
                ),
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5),
                    Text(
                      itemData.itemName, // Access itemname property
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '\$${itemData.price.toStringAsFixed(2)}',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 126, 125, 125),
                          ),
                        ),
                        Container(
                          height: 50, // Adjust the height as needed
                          width: 90,
                          child: ListView(
                            scrollDirection: Axis
                                .horizontal, // Set horizontal scroll direction
                            children: List.generate(5, (index) {
                              // Replace this with the content of your list item
                              return Center(
                                child: SvgPicture.asset(
                                    "Assets/App_images/discription_detail_images/rating/Star.svg"),
                              );
                            }),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                trailing: GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.favoriteItems.removeAt(index);
                    });
                  },
                  child: Container(
                    width: 54,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: isFavorited
                          ? Colors.red
                          : const Color.fromARGB(255, 252, 212, 212),
                      borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(20),
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
            );
          }),
        ),
      ),
    );
  }
}
