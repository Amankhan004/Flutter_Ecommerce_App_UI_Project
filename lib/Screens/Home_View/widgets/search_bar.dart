import 'package:ecommerce_app_complete_ui_project/utils/App_colors/colors.dart';
import 'package:flutter/material.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SearchBarWidgetState createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
  padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
  child: Container(
    width: double.infinity,
    height: 56,
    decoration: ShapeDecoration(
      color: AppColors.darkBlue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(28),
      ),
    ),
    child: TextField(
      decoration: InputDecoration(
        hintText: 'Search for something...',
        hintStyle: TextStyle(color: AppColors.white.withOpacity(0.7)), 
        prefixIcon:const Icon(Icons.search, color:AppColors.white), 
        border: InputBorder.none,
        focusedBorder: InputBorder.none, 
        contentPadding:const EdgeInsets.all(16), 
      ),
    ),
  ),
);

  }
}
