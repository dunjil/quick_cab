import 'package:quick_cab/exports.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NavigationColor.whiteNavigation();

    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: ScreenUtil().setHeight(15),
          horizontal: ScreenUtil().setWidth(
            10,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: ScreenUtil().setHeight(150),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(child: Image.asset("assets/splash.png")),
                  SizedBox(
                    height: ScreenUtil().setHeight(40),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: ScreenUtil().setWidth(49)),
                    child: Column(
                      children: [
                        Text(
                          "Book taxi, scooter or a bike within seconds",
                          style: kTitleTextStyle,
                          textAlign: TextAlign.center,
                        ),
                        defaultVerticalSpace,
                        Text(
                          "The fastest app to book a taxi, scooter, or a bike online near by you ",
                          style: kBodyTextStyle,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: ScreenUtil().setHeight(120),
              ),
              DefaultButton(
                title: "Give me a ride",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpScreen()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
