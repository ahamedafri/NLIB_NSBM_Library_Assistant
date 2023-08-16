import 'package:flutter/material.dart';

class BorrowedBooks extends StatefulWidget {
  const BorrowedBooks({super.key});

  _BorrowedBooks createState() => _BorrowedBooks();
}

class _BorrowedBooks extends State<BorrowedBooks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text(
          'Borrowed Books',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: ((context, index) {
                  return Container(
                    width: double.infinity,
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Head First java'),
                            Text('kathy sierra'),
                          ],
                        ),
                        Container(
                          height: 90,
                          width: 50,
                          color: Colors.green,
                        ),
                        Column(
                          children: [
                            Text('begine date here'),
                            Text('end date here'),
                          ],
                        )
                      ],
                    ),
                  );
                }))
          ],
        ),
      ),
    );
  }
}
