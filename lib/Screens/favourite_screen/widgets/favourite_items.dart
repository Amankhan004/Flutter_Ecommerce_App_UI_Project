import 'package:ecommerce_app_complete_ui_project/Data/category_data/restaurants_data.dart';
import 'package:ecommerce_app_complete_ui_project/Screens/bottom_navbar/bottom_navbar.dart';
import 'package:ecommerce_app_complete_ui_project/Screens/category_View/category_view.dart';
import 'package:ecommerce_app_complete_ui_project/Widgets/custom_toast.dart';
import 'package:ecommerce_app_complete_ui_project/resources/items_data.dart';
import 'package:ecommerce_app_complete_ui_project/utils/App_colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

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
    final favouritesCount = widget.favoriteItems.isEmpty;
    String itemRemoved = "Item Removed";
    return Expanded(
      child: SingleChildScrollView(
        child: favouritesCount
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LottieBuilder.asset(
                    "lib/utils/Animation - 1697537554969.json",
                    height: 250,
                    reverse: true,
                    repeat: true,
                    fit: BoxFit.cover,
                  ),
                  Center(
                      child: Text(
                    "No Items marked as favourites!",
                    style: GoogleFonts.manrope(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  )),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyCategoryView()));
                      },
                      child: Container(
                        width: 200,
                        height: 60,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF2A4BA0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "Add Items Now!",
                            style: GoogleFonts.manrope(
                                fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            : Column(
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
                          showSnackBar(context, itemRemoved);
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
                            isFavorited
                                ? Icons.favorite
                                : Icons.favorite_border,
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
