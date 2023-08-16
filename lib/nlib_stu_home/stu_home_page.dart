import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  _MainHomePage createState() => _MainHomePage();
}

class _MainHomePage extends State<MainHomePage> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currentPageValue = 0.0;
  double _schaleFactor = 0.8, _height = 220.0;
  int currentTab = 0;
  final List<Widget> screens = [];
  final PageStorageBucket bucket = PageStorageBucket();
  // Widget currentScreen = Dashborad();

  @override
  void initState() {
    super.initState();

    pageController.addListener(() {
      //we need to wrap _CurrentPageValue inside the setState value because as soon
      //as we change the value it needs to be recorded.
      setState(() {
        _currentPageValue =
            pageController.page!; //this ! defines this can be null
      });
    });
  }

  //and after the needs are done we need to clear them as soon as possible
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //top navigation
            Container(
              height: 60,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.green,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [],
              ),
            ),
            SizedBox(height: 10),

            //first user name page
            Container(
              width: 350,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.green,
              ),
            ),
            SizedBox(height: 40),

            //heading messages as advertisments
            Container(
              //color: Colors.redAccent,
              height: 220,
              child: PageView.builder(
                  controller: pageController,
                  itemCount: 5,
                  itemBuilder: (context, position) {
                    return _buildPageItem(position);
                  }),
            ),

            new DotsIndicator(
              dotsCount: 5,
              position: _currentPageValue,
              decorator: DotsDecorator(
                activeColor: const Color.fromARGB(255, 155, 239, 160),
                size: const Size.square(9.0),
                activeSize: const Size(18.0, 9.0),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
              ),
            ),

            SizedBox(height: 20),
            //seat count
            mainCard(),
            SizedBox(height: 20),

            //book search page
            mainCard(),
            SizedBox(height: 20),

            mainCard(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget mainCard() {
    return Container(
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.green,
      ),
      child: Column(
        children: [
          //book search picture
          Container(
            margin: EdgeInsets.all(1),
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.2),
                topRight: Radius.circular(20.0),
              ),
              color: Colors.green,
            ),
          ),
          //book search discription
          Container(
            margin: EdgeInsets.all(1),
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.2),
                bottomRight: Radius.circular(20.0),
              ),
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currentPageValue.floor()) {
      //using this simple math we are trying to get what is active and what is not
      //for example let's say that we are in the index = 0 page so for that page
      //currentpagevalue is also 0. not matter what we multiply always it will
      //become 0. but finally we get 0. which means currschale page will remain
      //1 for current active page.
      var currSchale = 1 - (_currentPageValue - index) * (1 - _schaleFactor);
      var currTrans = _height * (1 - currSchale) / 2;
      matrix = Matrix4.diagonal3Values(1, currSchale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    }
    //this section we are referring the next slide when there is a current slide
    //is showing.
    else if (index == _currentPageValue.floor() + 1) {
      //in here when there is a current page active automatically (_currentPageValue - index + 1) * (1 - _schaleFactor) will become 0 because of (_currentPageValue - index + 1) = 0. so automatically schalefactor will become = 0.8
      var currSchale =
          _schaleFactor + (_currentPageValue - index + 1) * (1 - _schaleFactor);
      //in here currtrans is for change the front page's position
      var currTrans = _height * (1 - currSchale) / 2;
      matrix = Matrix4.diagonal3Values(1, currSchale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    }
    //so let's refer the previous page
    else if (index == _currentPageValue.floor() - 1) {
      //in here when there is a current page active automatically (_currentPageValue - index + 1) * (1 - _schaleFactor) will become 0 because of (_currentPageValue - index + 1) = 0. so automatically schalefactor will become = 0.8
      var currSchale = 1 - (_currentPageValue - index) * (1 - _schaleFactor);
      //in here currtrans is for change the front page's position
      var currTrans = _height * (1 - currSchale) / 2;
      matrix = Matrix4.diagonal3Values(1, currSchale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    }
    //so for any other type of pages
    else {
      var currSchale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currSchale, 1)
        ..setTranslationRaw(0, _height * (1 - currSchale) / 2, 1);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            //color: Colors.redAccent,
            height: 220,
            margin: EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: index.isEven
                  ? Colors.green
                  : Color.fromARGB(255, 155, 239, 160),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
