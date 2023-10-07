import 'package:ecommerce_app_complete_ui_project/Data/category_data/restaurants_data.dart';
import 'package:ecommerce_app_complete_ui_project/Screens/category_View/category_item_detail.dart';
import 'package:flutter/material.dart';

class CategoryOffers extends StatelessWidget {
  const CategoryOffers({Key? key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            int crossAxisCount = 2;
            if (constraints.maxWidth >= 600) {
              crossAxisCount = 4;
            } else if (constraints.maxWidth >= 400) {
              crossAxisCount = 3;
            }

            return GridView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: 14.0,
                mainAxisSpacing: 10.0,
                childAspectRatio: 1,
              ),
              itemCount: restaurantsList.length,
              itemBuilder: (context, index) {
                final restaurant = restaurantsList[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => CategoryItemDetails(
                          selected: restaurant.restaurantName,
                          selectedCategory: restaurant,
                          restIndex: index,
                        ),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color.fromARGB(255, 241, 241, 243),
                      border: Border.all(
                        width: 0.5,
                        color: const Color(0xFFF7F8FA),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                            height: 120,
                            width: 160,
                            child: Image.asset(restaurant.restaurantImage)),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          restaurant.restaurantName,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          restaurant.tagline,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 126, 125, 125),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}