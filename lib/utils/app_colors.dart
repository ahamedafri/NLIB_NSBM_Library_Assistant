import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AppColors {
  static final Color BASE_COLOR = HexColor(AppColorsStringFormat.BASE_COLOR);
  static final Color CONTAINER_COLOR =
      HexColor(AppColorsStringFormat.CONTAINER_COLOR);
  static final Color CONTAINER_WHITE =
      HexColor(AppColorsStringFormat.CONTAINER_WHITE);

  static final Color HEADER_TEXT_COLOR =
      HexColor(AppColorsStringFormat.HEADER_TEXT_COLOR);
  static final Color NORMAL_TEXT_COLOR =
      HexColor(AppColorsStringFormat.NORMAL_TEXT_COLOR);
  static final Color FADED_TEXT_COLOR =
      HexColor(AppColorsStringFormat.FADED_TEXT_COLOR);
  static final Color NOTIFICATION_TEXT_COLOR =
      HexColor(AppColorsStringFormat.NOTIFICATION_TEXT_COLOR);
  static final Color WARNING_TEXT_COLOR =
      HexColor(AppColorsStringFormat.WARNING_TEXT_COLOR);
  static final Color GRAY_COLOR = HexColor(AppColorsStringFormat.GRAY_COLOR);

  static final Color BUTTON_COLOR =
      HexColor(AppColorsStringFormat.BUTTON_COLOR);
}

class AppColorsStringFormat {
  static final String BASE_COLOR = "#8dc63f";
  static final String CONTAINER_COLOR = "#b4f485";
  static final String CONTAINER_WHITE = "#FFFFFF";

  static final String HEADER_TEXT_COLOR = "#FFFFFF";
  static final String NORMAL_TEXT_COLOR = "#1A1C18";
  static final String FADED_TEXT_COLOR = "#868889";
  static final String NOTIFICATION_TEXT_COLOR = "#356B07";
  static final String WARNING_TEXT_COLOR = "#FF0000";
  static final String GRAY_COLOR = "#c4c8bb";

  static final String BUTTON_COLOR = "#356B07";
}
