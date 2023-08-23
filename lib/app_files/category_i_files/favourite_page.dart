import 'package:flutter/material.dart';
import './drawer.dart';

class FavouriteBooks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SlidDrawer(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        title: Container(
          child: Column(children: [
            SizedBox(height: 10),
            Center(
              child: Container(
                height: 60,
                width: 380,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.green,
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
                                      color: Colors.green[100]),
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
                                        color: Colors.white),
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
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 90,
                          width: 50,
                          color: Colors.green,
                        ),
                        SizedBox(width: 50),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Head First java'),
                            SizedBox(height: 10),
                            Text('kathy sierra'),
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
