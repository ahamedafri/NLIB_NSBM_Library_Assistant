import 'package:flutter/material.dart';
import 'package:nlib_library_assistant/widgets/text_formatter.dart';

class RoundButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor, fontColor, borderColor;
  final double buttonWidth, buttonHeight;

  RoundButton({
    required this.buttonText,
    this.buttonColor = const Color(0xff356B07),
    this.fontColor = const Color(0xffFFFFFF),
    this.borderColor = const Color(0xff356B07),
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
        color: buttonColor,
        border: Border.all(color: borderColor),
      ),
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
