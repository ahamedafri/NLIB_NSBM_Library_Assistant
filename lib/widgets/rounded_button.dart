import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:nlib_library_assistant/widgets/text_formatter.dart';

class RoundButton extends StatelessWidget {
  final String buttonText, buttonColor, fontColor;
  final double buttonWidth, buttonHeight;

  RoundButton({
    required this.buttonText,
    this.buttonColor = '#356B07',
    this.fontColor = '#FFFFFF',
    this.buttonWidth = 100,
    this.buttonHeight = 50,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonWidth,
      height: buttonHeight,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: HexColor(buttonColor)),
      child: Center(
        child: SmallText(
          text: buttonText,
          fontColor: fontColor,
          fontSize: 20,
        ),
      ),
    );
  }
}
