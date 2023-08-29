import 'package:flutter/material.dart';
import 'package:nlib_library_assistant/utils/app_colors.dart';
import 'package:nlib_library_assistant/widgets/text_formatter.dart';

class Profile extends StatefulWidget {
  @override
  _Profile createState() => _Profile();
}

class _Profile extends State<Profile> {
  //default values for expansion tiles
  double containerPadding = 20,
      rowLeftPadding = 40,
      iconSize = 18,
      titleFontSize = 14;
  Color iconColor = AppColors.ICON_WHITE;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                width: double.maxFinite,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  color: AppColors.BASE_COLOR,
                ),
              ),
              Positioned(
                top: 220,
                child: CircleAvatar(
                  minRadius: 80,
                  backgroundColor: AppColors.CONTAINER_WHITE,
                  child: CircleAvatar(
                    radius: 70,
                    backgroundColor: AppColors.BUTTON_COLOR,
                  ),
                ),
              ),
              Positioned(
                top: 285,
                left: 220,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: CircleAvatar(
                      backgroundColor: AppColors.BUTTON_COLOR,
                      radius: 20,
                      child: Icon(
                        Icons.camera_alt,
                        color: AppColors.ICON_WHITE,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 390,
                child: Column(
                  children: [
                    TextHeader(
                      text: 'Olivia Austin',
                      fontColor: AppColors.NORMAL_TEXT_COLOR,
                    ),
                    SizedBox(height: 10),
                    SmallText(
                      text: 'oliva@students.nsbm.ac.lk',
                      fontColor: AppColors.FADED_TEXT_COLOR,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 160),
          Column(
            children: [
              ExpansionTile(
                title: Container(
                  padding: EdgeInsets.symmetric(horizontal: containerPadding),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: rowLeftPadding),
                        child: Icon(
                          Icons.account_circle_outlined,
                          color: AppColors.BASE_COLOR,
                          size: iconSize,
                        ),
                      ),
                      SizedBox(width: 10),
                      Padding(
                        padding: EdgeInsets.only(left: 2),
                        child: BoldText(
                          text: 'About Me',
                          fontSize: titleFontSize,
                        ),
                      ),
                    ],
                  ),
                ),
                children: [
                  Container(
                    child: Center(
                      child: SmallText(text: 'This is title number 2'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
              buttonTiles(
                  icon: Icons.favorite,
                  titleText: 'My Favourite',
                  buttonIndex: 0),
              SizedBox(height: 35),
              buttonTiles(
                  icon: Icons.notifications_none,
                  titleText: 'Notification',
                  buttonIndex: 1),
              SizedBox(height: 35),
              signOutTile(),
            ],
          )
        ],
      ),
    );
  }

  Widget buttonTiles(
      {required IconData icon,
      required String titleText,
      required int buttonIndex}) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: containerPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: rowLeftPadding),
                  child: Icon(
                    icon,
                    color: AppColors.BASE_COLOR,
                    size: iconSize,
                  ),
                ),
                SizedBox(width: 10),
                Padding(
                  padding: EdgeInsets.only(left: 2),
                  child: BoldText(
                    text: titleText,
                    fontSize: titleFontSize,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right: 40),
              child: Icon(
                Icons.arrow_forward_ios,
                size: iconSize,
                color: AppColors.GRAY_COLOR,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget signOutTile() {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: containerPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: rowLeftPadding),
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: AppColors.BASE_COLOR,
                    size: iconSize,
                  ),
                ),
                SizedBox(width: 10),
                Padding(
                  padding: EdgeInsets.only(right: 40),
                  child: BoldText(
                    text: 'Sign out',
                    fontSize: titleFontSize,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
