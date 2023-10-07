import 'package:ecommerce_app_complete_ui_project/Data/category_data/restaurants_data.dart';
import 'package:ecommerce_app_complete_ui_project/Screens/Detail_view/widgets/color_bar.dart';
import 'package:ecommerce_app_complete_ui_project/Screens/Detail_view/widgets/custom_detail_appbar.dart';
import 'package:ecommerce_app_complete_ui_project/Screens/Detail_view/widgets/custom_detail_body.dart';
import 'package:ecommerce_app_complete_ui_project/Screens/Detail_view/widgets/product_discription.dart';
import 'package:ecommerce_app_complete_ui_project/Screens/add_to_card/widgets/att_to_card.dart';
import 'package:ecommerce_app_complete_ui_project/utils/App_colors/colors.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final int index;
  final int restIndex;
  
  const DetailScreen({Key? key,required this.index,required this.restIndex}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _DetailScreenState createState() => _DetailScreenState(index: index,restIndex: restIndex);
}

class _DetailScreenState extends State<DetailScreen> {
  final int index;
  final int restIndex;
  _DetailScreenState({required this.index,required this.restIndex});

  Color selectedColor = AppColors.lightBlue;
  late ItemData itemData;
  late List<String> itemImageUrl;
  void onColorChanged(Color color) {
    setState(() {
      selectedColor = color;
    });
  }

  @override
  void initState() {
    itemData = restaurantsList[restIndex].items[index];
    itemImageUrl = itemData.itemImageUrl;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 240, 240),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const CustomDetailAppbar(),
              CustomBodyDetails(
                  selectedColor: selectedColor, imageUrls: itemImageUrl),
              ProductDescription(
                selectedColor: selectedColor,
                itemData: itemData, onFavoriteChanged: (bool ) {  }, itemIndex: restIndex,
              ),
              CustomColorBar(onColorChanged: onColorChanged, onAddToCart: addToCart, itemData: itemData, // Pass the addToCart function
  removeFromCart: removeFromCart, ),
             
            ],
          ),
        ),
      ),
    );
  }
}
