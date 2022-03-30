import 'package:quick_cab/exports.dart';

class ScreenNavigation extends StatefulWidget {
  const ScreenNavigation({Key? key}) : super(key: key);

  @override
  _ScreenNavigationState createState() => _ScreenNavigationState();
}

class _ScreenNavigationState extends State<ScreenNavigation> {
  List screens = const [
    HomeScreen(),
    ProfileScreen(),
    HomeScreen(),
    ProfileScreen()
  ];
  int screenIndex = 0;
  @override
  Widget build(BuildContext context) {
    NavigationColor.whiteNavigation();
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: screens[screenIndex],
      bottomNavigationBar: BottomAppBar(
        color: kWhiteColor,
        elevation: 2,
        shape: const CircularNotchedRectangle(),
        notchMargin: ScreenUtil().setHeight(12),
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: ScreenUtil().setWidth(8),
              vertical: ScreenUtil().setHeight(5)),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                ScreenUtil().radius(10),
              ),
              topRight: Radius.circular(
                ScreenUtil().radius(5),
              ),
            ),
          ),
          height: ScreenUtil().setHeight(60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: NavigationItem(
                  isActive: screenIndex == 0 ? true : false,
                  onPressed: () {
                    setState(() {
                      screenIndex = 0;
                    });
                  },
                  title: "Home",
                  assetIcon: screenIndex == 0 ? "home_active.png" : "home.png",
                ),
              ),
              Expanded(
                child: NavigationItem(
                  isActive: screenIndex == 1 ? true : false,
                  onPressed: () {
                    setState(() {
                      screenIndex = 1;
                    });
                  },
                  title: "Wallet",
                  assetIcon: "wallet.png",
                ),
              ),
              //const SizedBox.shrink(),

              Expanded(
                child: NavigationItem(
                  isActive: screenIndex == 2 ? true : false,
                  onPressed: () {
                    setState(() {
                      screenIndex = 2;
                    });
                  },
                  title: "Chats",
                  assetIcon: "mess.png",
                ),
              ),
              Expanded(
                child: NavigationItem(
                  onPressed: () {
                    setState(
                      () {
                        screenIndex = 3;
                      },
                    );
                  },
                  isActive: screenIndex == 3 ? true : false,
                  title: "Profile",
                  assetIcon:
                      screenIndex == 3 ? "user_active.png" : "user_profile.png",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
