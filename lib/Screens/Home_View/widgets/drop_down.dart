import 'package:ecommerce_app_complete_ui_project/utils/App_colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DropDownButton extends StatefulWidget {
  const DropDownButton({super.key});

  @override
  State<DropDownButton> createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  List<String> listitem = ["1 Hour", "2 Hour", "5 Hour"];
  String? valueChoiceitems;

  List<String> listaddress = ["Dolmin Mall", "Mobile Market", "Burns Road"];
  String? valueChoiceaddress;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Opacity(
              opacity: 0.50,
              child: Text('DELIVERY TO',
                  style: GoogleFonts.manrope(
                      fontSize: 12,
                      fontWeight: FontWeight.w800,
                      // height: 0,
                      // letterSpacing: 0.22,
                      color: AppColors.greyWhite)),
            ),
            DropdownButtonHideUnderline(
              
              child: DropdownButton<String>(
                 hint: Text(
                        "Mobile Market",
                        style: GoogleFonts.manrope(
                            fontSize: 12, color: Colors.white),
                      ),
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                ),
                style: GoogleFonts.manrope(fontSize: 12, color: Colors.black),
                value: valueChoiceaddress,
                items: listaddress.map((valueItem) {
                  return DropdownMenuItem<String>(
                    value: valueItem,
                    child: Text(
                      valueItem,
                      style: TextStyle(
                        color: valueItem == valueChoiceaddress
                           ? Colors.white
                            : Colors.white,
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (newvalue) {
                  setState(() {
                    valueChoiceaddress = newvalue;
                  });
                },
                dropdownColor:AppColors.darkBlue, // Set the background color of the dropdown
              ),
            )
          ],
        ),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Opacity(
              opacity: 0.50,
              child: Text('WITHIN',
                  style: GoogleFonts.manrope(
                      fontSize: 12,
                      fontWeight: FontWeight.w800,
                      height: 0,
                      letterSpacing: 0.22,
                      color: AppColors.greyWhite)),
            ),
            DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                 hint: Text(
                        "1 Hour",
                        style: GoogleFonts.manrope(
                            fontSize: 12, color: Colors.white),
                      ),
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                ),
                style: GoogleFonts.manrope(fontSize: 12, color: Colors.black),
                value: valueChoiceitems,
                items: listitem.map((valueItem) {
                  return DropdownMenuItem<String>(
                    value: valueItem,
                    child: Text(
                      valueItem,
                      style: TextStyle(
                        color: valueItem == valueChoiceitems
                            ? Colors.white
                            : Colors.white,
                      ),
                    ),
                  );
                }).toList(),
                onChanged: (newvalue) {
                  setState(() {
                    valueChoiceitems = newvalue;
                  });
                },
                dropdownColor: AppColors.darkBlue, 
              ),
            )
          ],
        ),
      ],
    );
  }
}
