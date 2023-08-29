import 'package:flutter/material.dart';

class DotsIndicatorContainers extends StatelessWidget {
  final int changingNumber;
  final Color activeDotColor, normalDotColor;

  DotsIndicatorContainers({
    required this.changingNumber,
    this.activeDotColor = const Color(0xff8dc63f),
    this.normalDotColor = const Color(0xff868889),
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          changingNumber == 0 ? activeDotContainer() : inactiveDotContainer(),
          changingNumber == 1 ? activeDotContainer() : inactiveDotContainer(),
          changingNumber == 2 ? activeDotContainer() : inactiveDotContainer(),
        ],
      ),
    );
  }

  Widget activeDotContainer() {
    return Container(
      width: 50,
      height: 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: activeDotColor,
      ),
    );
  }

  Widget inactiveDotContainer() {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: normalDotColor,
      ),
    );
  }
}
