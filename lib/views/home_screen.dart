import 'package:quick_cab/exports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: ScreenUtil().setHeight(5),
                  left: ScreenUtil().setWidth(
                    20,
                  ),
                  right: ScreenUtil().setWidth(
                    20,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: ScreenUtil().setHeight(2),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: ScreenUtil().radius(18),
                            backgroundImage:
                                const AssetImage('assets/profile.png'),
                          ),
                          SizedBox(
                            width: ScreenUtil().setWidth(15),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Good morning",
                                  style: kBodyTextStyle.copyWith(
                                      fontSize: ScreenUtil().setSp(12)),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(
                                  height: ScreenUtil().setHeight(2),
                                ),
                                Text(
                                  "Amelia Barlow",
                                  style: kBodyTextStyle.copyWith(
                                      color: kPrimaryTextColor,
                                      fontWeight: FontWeight.w600),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    CircleAvatar(
                      radius: ScreenUtil().radius(12),
                      backgroundColor: kWhiteColor,
                      child: Image.asset(
                        'assets/notify.png',
                        color: kBlackColor,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: ScreenUtil().setHeight(220),
                child: Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        left: ScreenUtil().setWidth(20),
                        right: ScreenUtil().setWidth(20),
                        top: ScreenUtil().setHeight(20),
                      ),
                      margin: EdgeInsets.only(
                        top: ScreenUtil().setHeight(50),
                      ),
                      height: ScreenUtil().setHeight(200),
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/cont_bg.png'),
                            fit: BoxFit.cover),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Make your life much easier ",
                                  style: kTitleTextStyle.copyWith(
                                      color: kWhiteColor,
                                      fontSize: ScreenUtil().setSp(20)),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(
                                  height: ScreenUtil().setHeight(10),
                                ),
                                Text(
                                  "Order now & get 50% off of your first ride",
                                  style: kBodyTextStyle.copyWith(
                                      color: kWhiteColor),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(
                                  height: ScreenUtil().setHeight(10),
                                ),
                                WhiteButton(
                                  title: 'Order now',
                                  onPressed: () {},
                                )
                              ],
                            ),
                          ),
                          Expanded(child: Container())
                        ],
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Image.asset(
                        'assets/banner.png',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: ScreenUtil().setHeight(15),
                  horizontal: ScreenUtil().setWidth(
                    20,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Select a car",
                            style: kTitleTextStyle.copyWith(
                                fontSize: ScreenUtil().setSp(16)),
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(15),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Expanded(
                                  child: VehicleOptionButton(
                                    asset: "🚕",
                                    name: "Taxi",
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const SelectDestinationScreen(),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: VehicleOptionButton(
                                    asset: "🚘",
                                    name: "Car",
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const SelectDestinationScreen(),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: VehicleOptionButton(
                                    asset: "🛵",
                                    name: "Scooter",
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const SelectDestinationScreen(),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: VehicleOptionButton(
                                    asset: "🚚",
                                    name: "Pickup",
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const SelectDestinationScreen(),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(15),
                    ),
                    Container(
                      width: ScreenUtil().setWidth(300),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Rides history",
                            style: kTitleTextStyle.copyWith(
                                fontSize: ScreenUtil().setSp(16)),
                          ),
                          Text(
                            "See all",
                            style: kBodyTextStyle.copyWith(
                                color: kPrimaryColor,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(10),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: ScreenUtil().setWidth(15),
                        vertical: ScreenUtil().setHeight(15),
                      ),
                      height: ScreenUtil().setHeight(228),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          ScreenUtil().radius(20),
                        ),
                        border: Border.all(color: kLightGrey2Color, width: 0.8),
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: ScreenUtil().setWidth(10),
                              vertical: ScreenUtil().setHeight(10),
                            ),
                            height: ScreenUtil().setHeight(51),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  ScreenUtil().radius(16),
                                ),
                                color: kLightPurpleColor),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "6 Mar, 2022",
                                  style: kBodyTextStyle.copyWith(
                                      fontSize: ScreenUtil().setSp(14),
                                      color: kPrimaryColor),
                                ),
                                Text(
                                  "\$24",
                                  style: kTitleTextStyle.copyWith(
                                      color: kSecondaryColor,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(10),
                          ),
                          Container(
                              child: Container(
                            height: ScreenUtil().setHeight(130),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: kWhiteColor,
                                      child: Image.asset(
                                        "assets/pickup_icon.png",
                                        //color: kSecondaryColor,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Pickup Location",
                                            style: kBodyTextStyle.copyWith(
                                                fontSize:
                                                    ScreenUtil().setSp(12)),
                                          ),
                                          SizedBox(
                                            height: ScreenUtil().setHeight(8),
                                          ),
                                          Text(
                                            "Internet city - Business tower",
                                            style: kTitleTextStyle.copyWith(
                                                fontSize:
                                                    ScreenUtil().setSp(14)),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                // SizedBox(
                                //   height: ScreenUtil().setHeight(30),
                                // ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: ScreenUtil().setWidth(18)),
                                  height: ScreenUtil().setHeight(30),
                                  width: ScreenUtil().setWidth(200),
                                  child: CustomPaint(
                                    size: const Size(1, double.infinity),
                                    painter: DashedLineVerticalPainter(),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: kWhiteColor,
                                      child: Image.asset(
                                        "assets/drop_off_icon.png",
                                        color: kSecondaryColor,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Drop Off",
                                            style: kBodyTextStyle.copyWith(
                                                fontSize:
                                                    ScreenUtil().setSp(12)),
                                          ),
                                          SizedBox(
                                            height: ScreenUtil().setHeight(8),
                                          ),
                                          Text(
                                            "Mall of the Emirates Metro",
                                            style: kTitleTextStyle.copyWith(
                                                fontSize:
                                                    ScreenUtil().setSp(14)),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ))
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
