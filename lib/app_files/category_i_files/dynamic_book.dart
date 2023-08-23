import 'package:flutter/material.dart';
import 'package:nlib_library_assistant/utils/app_colors.dart';
import 'package:nlib_library_assistant/widgets/text_formatter.dart';

class DynamicBook extends StatelessWidget {
  const DynamicBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 500,
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back_ios),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(
                  top: 5,
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                  color: AppColors.CONTAINER_WHITE,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Center(
                  child: TextHeader(
                    text: 'Harry potter and the order of the phoenix',
                    fontColor: AppColorsStringFormat.NORMAL_TEXT_COLOR,
                  ),
                ),
              ),
            ),
            backgroundColor: AppColors.BASE_COLOR,
            flexibleSpace: FlexibleSpaceBar(
                // background: Image.asset("name"),
                ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Chinese Side'),
                SizedBox(height: 20),
                Text('Introduce'),
                SizedBox(height: 20),
                Expanded(
                  child: SingleChildScrollView(
                    child: Text(
                        'This is just a testing section. This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.This is just a testing section.'),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 90,
        padding: EdgeInsets.only(left: 20, right: 20, top: 10),
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.favorite),
          )
        ]),
      ),
    );
  }
}
