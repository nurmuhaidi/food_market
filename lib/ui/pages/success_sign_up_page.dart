part of 'pages.dart';

class SuccessSignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IllustrationPage(
        title: "Yeah! Completed",
        subtitle: "Now you are able to order \n some foods as a self reward",
        picturePath: "assets/image/food_wishes.png",
        buttonTitle1: "Find Foods",
        buttonTap1: () {},
      ),
    );
  }
}
