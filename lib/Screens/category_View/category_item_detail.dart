import 'package:ecommerce_app_complete_ui_project/resources/items_data.dart';
import 'package:ecommerce_app_complete_ui_project/utils/App_colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryItemDetails extends StatefulWidget {
  const CategoryItemDetails({
    super.key,
    this.selected,
    this.selectedCategory,
  });

  final String? selected;
  final selectedCategory;

  @override
  State<CategoryItemDetails> createState() => _CategoryItemDetails();
}

class _CategoryItemDetails extends State<CategoryItemDetails> {
  static final List<String> typeof = [
    "Popular",
    "Low Price",
    "Discounted",
    "Most Expensive",
    "Popular",
    "Low Price",
    "Discounted",
    "Most Expensive",
  ];

  List<String> selectedtype = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.arrow_back_ios_new_outlined),
                  Text(widget.selected ?? ''),
                  const Spacer(),
                  const Icon(Icons.search),
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
                                horizontal: 5.0, vertical: 10),
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
                                }),
                          ))
                      .toList(),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 14.0,
                      mainAxisSpacing: 10.0,
                      childAspectRatio: 1,
                    ),
                    itemCount: categoryItems.length,
                    itemBuilder: (context, index) {
                      final item = categoryItems[index];
                      return Container(
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color.fromARGB(255, 241, 241, 243),
                          border: Border.all(
                            width: 0.5,
                            color: const Color(0xFFF7F8FA),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Stack to add the plus button
                            Stack(
                              
                              children: [
                                SizedBox(
                                  height: 100,
                                  width: 800,
                                  child: SvgPicture.asset(item.imageAsset),
                                ),
                                // Circular button with plus icon
                                Positioned(
                                  bottom: 0,
                                  right: 10,
                                  
                                  child: GestureDetector(
                                    onTap: () {
                                      // Handle adding the item to the cart here
                                      setState(() {
                                        // Add item to cart
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: AppColors.lightBlue,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black.withOpacity(0.1),
                                            spreadRadius: 1,
                                            blurRadius: 3,
                                            offset: Offset(0, 1),
                                          ),
                                        ],
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                      
                                        child: SvgPicture.asset(
                                          'Assets/App_images/plus-outline (3) 1.svg', // Replace with your SVG image path
                                          width: 16,
                                          height: 16,
                                          
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              item.name,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              '\$${item.price.toStringAsFixed(2)}',
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
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
            ),
          ],
        ),
      ),
    );
  }
}
