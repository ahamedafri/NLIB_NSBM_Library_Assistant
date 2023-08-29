import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class WelcomeNoteImage extends StatelessWidget {
  final String imageUrl;

  WelcomeNoteImage({required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 100, left: 10),
      width: 300,
      height: 300,
      color: AppColors.BASE_COLOR,
    );
  }
}
