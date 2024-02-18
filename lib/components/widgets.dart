import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DayButton extends StatelessWidget {
  const DayButton({
    super.key,
    required this.dayCount,
    required this.selectedColor,
    required this.borderColor,
  });

  final int dayCount;
  final Color selectedColor;
  final bool borderColor;

  @override
  Widget build(BuildContext context) {
    buttonBorderColor(bool borderColor) {
      if (borderColor == false) {
        return Colors.transparent;
      } else {
        return Colors.black38;
      }
    }

    return Container(
      width: 89,
      height: 39,
      decoration: BoxDecoration(
          border: Border.all(color: buttonBorderColor(borderColor)),
          color: selectedColor,
          borderRadius: BorderRadius.circular(12)),
      child: Center(
        child: Text(
          'Day' + ' $dayCount',
          style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              )),
        ),
      ),
    );
  }
}
class MyTextField extends StatelessWidget {
  final bool obscureText;
  final String hintText;
  final TextEditingController controller;


  const MyTextField({super.key, required this.obscureText, required this.hintText, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(

      controller:controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0XFFBDBDBD)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
      ),
    );
  }
}