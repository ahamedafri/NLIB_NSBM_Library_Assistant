import 'package:flutter/material.dart';
import 'package:nlib_library_assistant/utils/app_colors.dart';
import 'package:nlib_library_assistant/widgets/text_formatter.dart';

class SearchResult extends StatefulWidget {
  const SearchResult({super.key});

  @override
  State<SearchResult> createState() => _SearchResultState();
}

class _SearchResultState extends State<SearchResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.BASE_COLOR,
        title: Padding(
          padding: EdgeInsets.only(left: 20),
          child: TextHeader(
            text: "Harry Potter",
          ),
        ),
        leading: Padding(
          padding: EdgeInsets.only(left: 30),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: AppColors.ICON_WHITE,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: 40),
          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 20,
              itemBuilder: (context, index) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {},
                              child: notificationPane(),
                            );
                          }),
                    ],
                  ),
                );
              }),
        ],
      ),
    );
  }

  Widget notificationPane() {
    return InkWell(
      onTap: () {},
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 5),
        color: AppColors.CONTAINER_WHITE,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 10),
            Container(
              color: Colors.white,
              height: 100,
              width: 50,
              child: Stack(
                children: [
                  Container(
                    height: 95,
                    width: 45,
                    color: AppColors.CONTAINER_COLOR,
                  )
                ],
              ),
            ),
            SizedBox(width: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 300,
                  child: SmallText(
                    text: 'J. K. Rowlings',
                    fontColor: AppColors.NORMAL_TEXT_COLOR,
                  ),
                ),
                Container(
                  width: 300,
                  child: BoldText(
                    text: 'Harry potter chamber of secrets',
                    fontSize: 20,
                    maxLines: 2,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
