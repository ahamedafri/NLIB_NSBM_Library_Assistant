import 'package:flutter/material.dart';
import 'package:nlib_library_assistant/utils/app_colors.dart';
import 'package:nlib_library_assistant/widgets/text_formatter.dart';

class BorrowedBooks extends StatefulWidget {
  const BorrowedBooks({super.key});

  _BorrowedBooks createState() => _BorrowedBooks();
}

class _BorrowedBooks extends State<BorrowedBooks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.BASE_COLOR,
        centerTitle: true,
        title: TextHeader(text: 'Borrowed Books'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: ((context, index) {
                  return listContainer();
                }))
          ],
        ),
      ),
    );
  }

  Widget listContainer() {
    return Container(
      width: double.infinity,
      height: 100,
      margin: EdgeInsets.only(left: 15, right: 15),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColors.GRAY_COLOR,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BoldText(text: 'Head First Java', fontSize: 20),
              SizedBox(height: 10),
              SmallText(text: 'kathy sierra'),
            ],
          ),
          Container(
            height: 90,
            width: 50,
            color: AppColors.BASE_COLOR,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BoldText(
                text: 'begine date here',
                fontSize: 14,
                fontColor: AppColorsStringFormat.GRAY_COLOR,
              ),
              SizedBox(height: 10),
              BoldText(
                text: 'end date here',
                fontSize: 14,
              ),
            ],
          )
        ],
      ),
    );
  }
}
