import 'package:ecommerce_app_complete_ui_project/Screens/Detail_view/widgets/color_bar.dart';
import 'package:ecommerce_app_complete_ui_project/Screens/Detail_view/widgets/custom_detail_appbar.dart';
import 'package:ecommerce_app_complete_ui_project/Screens/Detail_view/widgets/custom_detail_body.dart';
import 'package:ecommerce_app_complete_ui_project/Screens/Detail_view/widgets/product_discription.dart';
import 'package:ecommerce_app_complete_ui_project/utils/App_colors/colors.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  Color selectedColor = AppColors.lightBlue;

  void onColorChanged(Color color) {
    setState(() {
      selectedColor = color; // Update selectedColor
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 243, 240, 240),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
             const CustomDetailAppbar(),
              CustomBodyDetails(selectedColor: selectedColor),
              ProductDescription(selectedColor: selectedColor),
              CustomColorBar(onColorChanged: onColorChanged),
            ],
          ),
        ),
      ),
    );
  }
}
