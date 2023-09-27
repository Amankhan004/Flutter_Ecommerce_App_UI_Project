import 'package:flutter/material.dart';

class CustomBodyDetails extends StatelessWidget {
  final Color selectedColor; 

  const CustomBodyDetails({Key? key, required this.selectedColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 238,
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset("Assets/App_images/offers.png"),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(4, (index) {
            return Container(
              margin: EdgeInsets.only(left: index == 0 ? 0 : 16),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: selectedColor, 
                  width: 2
                ),
              ),
              height: 48,
              width: 48,
              child: Image.asset("Assets/App_images/offers.png"),
            );
          }),
        ),
      ],
    );
  }
}
