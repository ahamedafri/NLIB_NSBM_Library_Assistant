import 'package:flutter/material.dart';
import 'package:nlib_library_assistant/utils/app_colors.dart';
import 'package:nlib_library_assistant/widgets/text_formatter.dart';

import '../../widgets/dots_indicator.dart';
import '../../widgets/images.dart';
import '../../widgets/rounded_button.dart';

class Category1WelcomeNote1 extends StatelessWidget {
  const Category1WelcomeNote1({super.key});

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
                text: 'Search Library',
              ),
            ),
            Center(
              child: WelcomeFont(
                text: 'Book Online',
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Center(
                child: SmallText(
                  text:
                      'you dont need to search to books \nin racks any more just search here!',
                  maxLines: 2,
                ),
              ),
            ),
            SizedBox(height: 35),
            // Add spacing between text and button
            DotsIndicatorContainers(changingNumber: 0),

            SizedBox(height: 30),
            RoundButton(buttonText: 'Next', buttonWidth: 200),
          ],
        ),
      ),
    );
  }
}
