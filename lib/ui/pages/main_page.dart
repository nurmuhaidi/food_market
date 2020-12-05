part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedPage = 0;
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Scaffold(
            body: Container(),
          ),
          SafeArea(
            child: Container(
              color: 'FAFAFC'.toColor(),
            ),
          ),
          SafeArea(
            child: PageView(
              controller: pageController,
              onPageChanged: (index) {
                setState(() {
                  selectedPage = index;
                });
              },
              children: [
                Center(
                  child: FoodPage(),
                ),
                Center(
                  child: IllustrationPage(
                    title: 'Ouch! Hungry',
                    subtitle: 'Seems you like have not \n ordered any food yet',
                    picturePath: 'assets/image/love_burger.png',
                    buttonTitle1: 'Find Foods',
                    buttonTap1: () {},
                    buttonTap2: () {},
                    buttonTitle2: 'Oke',
                  ),
                ),
                Center(
                  child: Text('Profile'),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomButtomNavBar(
              selectedIndex: selectedPage,
              onTap: (index) {
                setState(() {
                  selectedPage = index;
                });
                pageController.jumpToPage(selectedPage);
              },
            ),
          )
        ],
      ),
    );
  }
}
