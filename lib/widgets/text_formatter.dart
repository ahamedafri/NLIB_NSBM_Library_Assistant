// ignore_for_file: avoid_unnecessary_containers

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

class TextHeader extends StatelessWidget {
  final String text, fontColor;
  final double fontSize;

  TextHeader(
      {this.fontSize = 24, this.fontColor = '#FDFDF5', required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
          color: HexColor(this.fontColor),
          fontSize: fontSize,
          fontFamily: GoogleFonts.roboto().toString(),
        ),
        overflow: TextOverflow.ellipsis);
  }
}

class SmallText extends StatelessWidget {
  final String text, fontColor;
  final double fontSize;
  final int maxLines;

  SmallText({
    required this.text,
    this.fontColor = '#44483E',
    this.fontSize = 14,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: HexColor(fontColor),
        fontSize: fontSize,
        overflow: TextOverflow.ellipsis,
        fontFamily: GoogleFonts.roboto().toString(),
      ),
      maxLines: maxLines,
    );
  }
}

class BoldText extends StatelessWidget {
  final String text, fontColor;
  final double fontSize;

  const BoldText(
      {required this.text, this.fontColor = '#000000', this.fontSize = 12});

  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: HexColor(fontColor),
        fontSize: fontSize,
        overflow: TextOverflow.ellipsis,
        fontFamily: GoogleFonts.roboto().toString(),
        fontWeight: FontWeight.w800,
      ),
    );
  }
}
