import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import '../../widgets/rounded_button.dart';
import './drawer.dart';
import '../../utils/app_colors.dart';
import '../../widgets/text_formatter.dart';

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
                                decoration: InputDecoration(
                                  hintText: 'Search Here',
                                ),
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
                                    color: AppColors.BASE_COLOR,
                                  ),
                                  child: IconButton(
                                    icon: Icon(Icons.search),
                                    onPressed: () {},
                                  ),
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
            //first user name page
            Container(
              width: 350,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: AppColors.BASE_COLOR,
              ),
              child: Padding(
                padding: EdgeInsets.only(left: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 25),
                    SmallText(
                      text: 'Welcome Back',
                    ),
                    TextHeader(text: 'HI! Olivia'),
                  ],
                ),
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
                activeColor: AppColors.CONTAINER_COLOR,
                size: const Size.square(9.0),
                activeSize: const Size(18.0, 9.0),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
              ),
            ),

            SizedBox(height: 20),
            //seat count
            mainCard(
              mainHeader: 'Seat Count',
              description:
                  'Check wetherh your seat ready and available before visiting inside the library',
              buttonText: 'Refresh',
            ),
            SizedBox(height: 20),

            //book search page
            mainCard(
              mainHeader: 'Search Book',
              description:
                  'You can search a book title and check whether the book is available.',
              buttonText: 'Search',
            ),
            SizedBox(height: 20),

            mainCard(
                mainHeader: 'Reserve a study room',
                description:
                    'You can reserve a study room through the app, if rooms are available',
                buttonText: 'Check'),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget mainCard(
      {required mainHeader,
      required String description,
      required String buttonText}) {
    return Container(
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.CONTAINER_COLOR,
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
              color: AppColors.CONTAINER_COLOR,
            ),
          ),
          //book search discription
          Container(
            margin: EdgeInsets.all(1),
            height: 250,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.2),
                bottomRight: Radius.circular(20.0),
              ),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextHeader(
                    text: mainHeader,
                    fontColor: AppColors.NORMAL_TEXT_COLOR,
                  ),
                  SmallText(text: 'In Library'),
                  SizedBox(height: 50),
                  Container(
                    child: SmallText(
                      text: description,
                      maxLines: 2,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: RoundButton(
                          buttonText: buttonText,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
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
                  ? AppColors.BASE_COLOR
                  : AppColors.CONTAINER_COLOR,
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
