import 'package:flutter/material.dart';

class CustomBodyDetails extends StatefulWidget {
  final Color selectedColor;
  final List<String> imageUrls; 

  CustomBodyDetails({Key? key, required this.selectedColor, required this.imageUrls}) : super(key: key);

  @override
  _CustomBodyDetailsState createState() => _CustomBodyDetailsState();
}

class _CustomBodyDetailsState extends State<CustomBodyDetails> {
  int selectedImageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 248,
          child: AspectRatio(
            aspectRatio: 1.10,
            child: Image.asset(widget.imageUrls[selectedImageIndex]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(widget.imageUrls.length, (index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedImageIndex = index;
                });
              },
              child: Container(
                margin: EdgeInsets.only(left: index == 0 ? 0 : 16),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: widget.selectedColor,
                    width: 2,
                  ),
                ),
                              height: selectedImageIndex == index ? 60 : 48, 
 
                width: selectedImageIndex == index ? 60 : 48,
                child: Image.asset(widget.imageUrls[index]),
              ),
            );
          }),
        ),
      ],
    );
  }
}




