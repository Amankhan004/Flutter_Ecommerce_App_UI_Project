import 'package:ecommerce_app_complete_ui_project/utils/App_colors/colors.dart';
import 'package:flutter/material.dart';

class CardData {
  final String? imageAsset;
  final String title;
  final String description;
  final double? cardWidth;
  final double? cardHeight;
  final Color? backgroundColor;

  CardData({
    this.imageAsset,
    required this.title,
    required this.description,
    this.cardWidth,
    this.cardHeight,
    this.backgroundColor,
  });
}

List<CardData> cardDataList = [
  CardData(
    imageAsset: "Assets/App_images/offers.png",
    title: "Get",
    description: "on first orders",
    cardWidth: 300,
    cardHeight: 170,
    backgroundColor: const Color(0xFFF9B023),
  ),
  CardData(
    title: "346 USD",
    description: "your total savings",
    cardWidth: 180,
    cardHeight: 120,
    backgroundColor:AppColors.lightYellow, // Customize the color as needed
  ),
  CardData(
    title: "215 HRS",
    description: "your total time saved",
    cardWidth: 180,
    cardHeight: 120,
    backgroundColor:AppColors.lightGrey, // Customize the color as needed
  ),
];

 