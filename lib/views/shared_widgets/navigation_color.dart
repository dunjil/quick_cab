import 'package:quick_cab/exports.dart';

class NavigationColor {
  static whiteNavigation() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor: kWhiteColor,
        systemNavigationBarIconBrightness: Brightness.dark,
        //systemNavigationBarColor: kWhiteColor,
        statusBarColor: kWhiteColor,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
  }

  static blueNavigation() {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor: kPrimaryColor,
        statusBarColor: kPrimaryColor,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.light,
      ),
    );
  }
}
