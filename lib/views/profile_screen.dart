import 'package:quick_cab/exports.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF5F8FF),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil().setWidth(15),
              vertical: ScreenUtil().setHeight(10)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: ScreenUtil().setWidth(55),
                    right: ScreenUtil().setWidth(15),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(''),
                      Text(
                        "Profile",
                        style: kTitleTextStyle,
                        textAlign: TextAlign.center,
                      ),
                      CircleAvatar(
                        child: Image.asset('assets/notify.png'),
                        backgroundColor: kWhiteColor,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(20),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(15),
                      vertical: ScreenUtil().setHeight(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: ScreenUtil().radius(50),
                        backgroundColor: kWhiteColor,
                        backgroundImage: const AssetImage('assets/profile.png'),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(10),
                      ),
                      Text(
                        "Amelia Barlow",
                        style: kTitleTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: ScreenUtil().setHeight(150),
                  margin: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(15),
                      vertical: ScreenUtil().setHeight(10)),
                  padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(20),
                      vertical: ScreenUtil().setHeight(10)),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(
                      ScreenUtil().radius(30),
                    ),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "You won 300 points",
                          style: kTitleTextStyle.copyWith(color: kWhiteColor),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: ScreenUtil().setHeight(10),
                        ),
                        Text(
                          "Thanks for riding with us! you won 300 point from your last ride",
                          style: kBodyTextStyle.copyWith(
                            color: kWhiteColor,
                            fontSize: ScreenUtil().setSp(14),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: ScreenUtil().setHeight(10),
                        ),
                        WhiteButton2(
                          title: "Redeem now 🔥",
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: ScreenUtil().setHeight(230),
                  margin: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(15),
                      vertical: ScreenUtil().setHeight(10)),
                  padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(20),
                      vertical: ScreenUtil().setHeight(10)),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.circular(
                      ScreenUtil().radius(30),
                    ),
                  ),
                  child: Column(
                    children: const [
                      ProfileItem(
                        title: 'Profile info',
                        asset: 'profile_item.png',
                      ),
                      LightLine(),
                      ProfileItem(
                        title: 'Cards',
                        asset: 'cards_item.png',
                      ),
                      LightLine(),
                      ProfileItem(
                        title: 'Settings',
                        asset: 'settings_item.png',
                      ),
                      LightLine(),
                      ProfileItem(
                        title: 'Activities',
                        asset: 'activities_item.png',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
