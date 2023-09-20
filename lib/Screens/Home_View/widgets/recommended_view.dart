import 'package:ecommerce_app_complete_ui_project/Data/item_data.dart';
import 'package:flutter/material.dart';
class Recommended extends StatelessWidget {
  const Recommended({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 10),
            height: 240,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: itemsList.length, // Use the length of the itemsList
              itemBuilder: (context, index) {
                final item = itemsList[index];
                return Container(
                  margin: const EdgeInsets.all(5),
                  height: 210,
                  width: 210,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xFFF7F8FA),
                    border: Border.all(
                      width: 0.5,
                      color: const Color(0xFFF7F8FA),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 100,
                        width: 160,
                        child: Image.asset(
                          item.imageAsset,
                        
                        ),
                      ),
                     
                      Container(
                        margin: const EdgeInsets.only(left: 25, top: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              item.itemName,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              item.tagline,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                            ),),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              height: 46,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(5.0, 5.0),
                                    blurRadius: 10.0,
                                    spreadRadius: 0.5,
                                  ),
                                  BoxShadow(
                                    color: Colors.white,
                                    offset: Offset(0.0, 0.0),
                                    blurRadius: 0.0,
                                    spreadRadius: 0.0,
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(left: 16),
                                    child: Center(
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                          const  TextSpan(
                                              text: 'Unit',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black,
                                              ),
                                            ),
                                            TextSpan(
                                              text: ' \$${item.price.toStringAsFixed(2)}', // Format price to two decimal places
                                              style:const TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      // Add your logic here
                                    },
                                    icon: const Icon(Icons.add),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  
                );
              },
            ),
          )
        ],
      ),
    );
    
  }
}
