import 'package:ecommerce_app_complete_ui_project/Data/category_data/restaurants_data.dart';
import 'package:ecommerce_app_complete_ui_project/Screens/Detail_view/detail_view.dart';
import 'package:ecommerce_app_complete_ui_project/utils/App_colors/colors.dart';
import 'package:flutter/material.dart';

class CategoryItemDetails extends StatefulWidget {
  const CategoryItemDetails({
    super.key,
    this.selected,
    this.selectedCategory,
    required this.restIndex,
  });

  final String? selected;
  final RestaurantData? selectedCategory;
  final int restIndex;

  @override
  State<CategoryItemDetails> createState() =>
      // ignore: no_logic_in_create_state
      _CategoryItemDetails(restIndex: restIndex);
}

class _CategoryItemDetails extends State<CategoryItemDetails> {
  final int restIndex;
  _CategoryItemDetails({required this.restIndex});

  // Create a list to store favorite items
  static final List<String> typeof = [
    "All",
    "Popular",
    "Low Price",
    "Discounted",
    "Most Expensive",
  ];

  List<String> selectedtype = ["All"]; // Initialize with "All" selected.

  @override
  Widget build(BuildContext context) {
    final restaurant = widget.selectedCategory;

    // Function to filter items based on the selected filter type.
    List<ItemData> filteredItems() {
      if (selectedtype.contains("All")) {
        return restaurant?.items ?? [];
      } else if (selectedtype.contains("Popular")) {
        return restaurant?.items.where((item) => item.isPopular).toList() ?? [];
      } else if (selectedtype.contains("Low Price")) {
        return restaurant?.items.where((item) => item.price <= 3.0).toList() ??
            [];
      } else if (selectedtype.contains("Discounted")) {
        return restaurant?.items
                .where((item) => item.discount > 0.0)
                .toList() ??
            [];
      } else if (selectedtype.contains("Most Expensive")) {
        return restaurant?.items.where((item) => item.price >= 5.0).toList() ??
            [];
      } else {
        return [];
      }
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 12.5),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            onTap: () => Navigator.pop(context),
                            child:
                                const Icon(Icons.arrow_back_ios_new_outlined)),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            widget.selected ?? '',
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const Icon(Icons.search),
                      ],
                    ),
                  ),
                  GestureDetector(
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(
                        Icons.shopping_cart_checkout_outlined,
                        size: 24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: typeof
                      .map((type) => Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5.0, vertical: 1),
                            child: FilterChip(
                              label: Text(type),
                              selectedColor: const Color(0xFFF9B023),
                              selected: selectedtype.contains(type),
                              onSelected: (selected) {
                                setState(() {
                                  if (selected) {
                                    selectedtype.add(type);
                                  } else {
                                    selectedtype.remove(type);
                                  }
                                });
                              },
                            ),
                          ))
                      .toList(),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 14.0,
                    mainAxisSpacing: 10.0,
                    childAspectRatio: 1,
                  ),
                  itemCount: filteredItems().length,
                  itemBuilder: (context, itemIndex) {
                    final item = filteredItems()[itemIndex];
                    return Container(
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColors.cardColor,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 3,
                            offset: const Offset(0, 1),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 110,
                            child: Stack(
                              children: [
                                SizedBox(
                                    height: 100,
                                    width: 700,
                                    child: Image.asset(item.itemImage)),
                                Positioned(
                                  bottom: 0,
                                  right: 8,
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) => DetailScreen(
                                                    index: itemIndex,
                                                    restIndex: restIndex,
                                                  )));
                                      setState(() {});
                                    },
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: AppColors.lightBlue,
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            item.itemName,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            '\$${item.price.toStringAsFixed(2)}',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 126, 125, 125),
                            ),
                          ),
                          
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
