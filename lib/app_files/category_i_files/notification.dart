import 'package:flutter/material.dart';

class notification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: Text(
          'Notifications',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
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
                  child: Container(
                    width: double.infinity,
                    color: Colors.green[200],
                    margin: EdgeInsets.only(bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 10),
                        Container(
                          color: Colors.white,
                          height: 100,
                          width: 50,
                          child: Stack(children: [
                            Container(
                              height: 95,
                              width: 45,
                              decoration: BoxDecoration(
                                border: Border(
                                  top: BorderSide(color: Colors.black),
                                  left: BorderSide(color: Colors.black),
                                  right: BorderSide(color: Colors.black),
                                  bottom: BorderSide(color: Colors.black),
                                ),
                              ),
                            )
                          ]),
                        ),
                        SizedBox(width: 20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 300,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Available Now'),
                                  Icon(
                                    Icons.notification_add_rounded,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 300,
                              child: Text(
                                'the element of style message will be displayed here.',
                                softWrap: false,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              }),
        ],
      )),
    );
  }
}
