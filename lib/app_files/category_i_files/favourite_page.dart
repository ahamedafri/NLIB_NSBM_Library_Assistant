import 'package:flutter/material.dart';
import 'package:nlib_library_assistant/utils/app_colors.dart';
import 'package:nlib_library_assistant/widgets/text_formatter.dart';
import './drawer.dart';

class FavouriteBooks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SlidDrawer(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        backgroundColor: AppColors.CONTAINER_WHITE,
        title: Container(
          child: Column(children: [
            SizedBox(height: 10),
            Center(
              child: Container(
                height: 60,
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: AppColors.BASE_COLOR,
                ),
                child: Stack(
                  children: [
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                              width: 200,
                              child: TextField(
                                decoration:
                                    InputDecoration(hintText: 'Search here'),
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(width: 10),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.BASE_COLOR),
                                  child: Icon(Icons.search),
                                ),
                              ),
                              SizedBox(width: 10),
                              Builder(builder: (context) {
                                return InkWell(
                                  onTap: () {
                                    Scaffold.of(context).openDrawer();
                                  },
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: AppColors.CONTAINER_WHITE),
                                  ),
                                );
                              }),
                            ],
                          ),
                          SizedBox(
                            width: 5,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: ((context, index) {
                  return Container(
                    width: double.infinity,
                    height: 100,
                    margin: EdgeInsets.only(left: 15, right: 15),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: AppColors.CONTAINER_GRAY,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 90,
                          width: 50,
                          color: AppColors.BASE_COLOR,
                        ),
                        SizedBox(width: 50),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            BoldText(
                              text: 'Head First Java',
                              fontSize: 14,
                            ),
                            SizedBox(height: 10),
                            SmallText(
                              text: 'kathy sierra',
                              fontSize: 10,
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                })),
          ],
        ),
      ),
    );
  }
}
