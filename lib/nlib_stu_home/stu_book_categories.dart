import 'package:flutter/material.dart';

class BookCategories extends StatefulWidget {
  const BookCategories({super.key});

  _BookCategories createState() => _BookCategories();
}

class _BookCategories extends State<BookCategories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text(
          'Book categories',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: ((context, index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        categoryCard(),
                        SizedBox(width: 20),
                        categoryCard(),
                      ],
                    ),
                  );
                })),
          ],
        ),
      ),
    );
  }

  Widget categoryCard() {
    return Container(
      width: 160,
      height: 160,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.green),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 150,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Text(
              'The picture goes here',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          Container(
            width: 140,
            height: 50,
            color: Colors.black,
            child: Text(
              'the text goes here',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
