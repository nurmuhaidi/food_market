part of 'pages.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            //// HEADER
            Container(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              height: 220,
              margin: EdgeInsets.only(bottom: defaultMargin),
              width: double.infinity,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 110,
                    height: 110,
                    margin: EdgeInsets.only(bottom: 16),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/image/photo_border.png'),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(
                            (context.bloc<UserCubit>().state as UserLoaded)
                                .user
                                .picturePath,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    (context.bloc<UserCubit>().state as UserLoaded).user.name,
                    style: GoogleFonts.poppins(
                        fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    (context.bloc<UserCubit>().state as UserLoaded).user.email,
                    style: greyFontStyle.copyWith(
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ],
              ),
            ),

            ////BODY
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  CustomTabBar(
                    titles: ['Account', 'FoodMarket'],
                    selectedIndex: selectedIndex,
                    onTap: (index) {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  (selectedIndex == 0)
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: defaultMargin),
                                  child: Text(
                                    'Edit Profile',
                                    style: blackFontStyle3.copyWith(
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: defaultMargin),
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/image/right_arrow.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    left: defaultMargin,
                                    top: 8,
                                  ),
                                  child: Text(
                                    'Home Address',
                                    style: blackFontStyle3.copyWith(
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: defaultMargin),
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/image/right_arrow.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    left: defaultMargin,
                                    top: 8,
                                  ),
                                  child: Text(
                                    'Security',
                                    style: blackFontStyle3.copyWith(
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: defaultMargin),
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/image/right_arrow.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    left: defaultMargin,
                                    top: 8,
                                  ),
                                  child: Text(
                                    'Payments',
                                    style: blackFontStyle3.copyWith(
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: defaultMargin),
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/image/right_arrow.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: defaultMargin),
                                  child: Text(
                                    'Rate App',
                                    style: blackFontStyle3.copyWith(
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: defaultMargin),
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/image/right_arrow.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    left: defaultMargin,
                                    top: 8,
                                  ),
                                  child: Text(
                                    'Help Center',
                                    style: blackFontStyle3.copyWith(
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: defaultMargin),
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/image/right_arrow.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    left: defaultMargin,
                                    top: 8,
                                  ),
                                  child: Text(
                                    'Privacy & Policy',
                                    style: blackFontStyle3.copyWith(
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: defaultMargin),
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/image/right_arrow.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    left: defaultMargin,
                                    top: 8,
                                  ),
                                  child: Text(
                                    'Terms & Conditions',
                                    style: blackFontStyle3.copyWith(
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: defaultMargin),
                                  width: 20,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/image/right_arrow.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                  SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
