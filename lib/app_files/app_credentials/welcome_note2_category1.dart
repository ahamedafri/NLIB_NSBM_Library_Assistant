import 'package:flutter/material.dart';

import '../../widgets/dots_indicator.dart';
import '../../widgets/images.dart';
import '../../widgets/rounded_button.dart';
import '../../widgets/text_formatter.dart';

class Category1WelcomeNote2 extends StatelessWidget {
  const Category1WelcomeNote2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            WelcomeNoteImage(imageUrl: ""),
            SizedBox(height: 25),
            Center(
              child: WelcomeFont(
                text: 'Save Your',
              ),
            ),
            Center(
              child: WelcomeFont(
                text: 'Favorite Book',
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SmallText(
                    text: 'Like your favorite books and find again',
                    maxLines: 2,
                  ),
                  SmallText(
                    text: 'in favorite page',
                    maxLines: 2,
                  ),
                ],
              ),
            ),
            SizedBox(height: 35),
            // Add spacing between text and button
            DotsIndicatorContainers(changingNumber: 1),

            SizedBox(height: 30),
            RoundButton(buttonText: 'Next', buttonWidth: 200),
          ],
        ),
      ),
    );
  }
}
