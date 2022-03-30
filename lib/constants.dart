import 'exports.dart';

const Color kPrimaryColor = Color(0XFF5256E8);
const Color kSecondaryColor = Color(0XFFF26060);
const Color kLightGreyColor = Color(0XFFDEDEE8);
const Color kLightGrey2Color = Color(0XFFF1F1F5);
const Color kWhiteColor = Color(0XFFFFFFFF);
const Color kBlackColor = Color(0XFF292D32);
const Color kHoverColor = Color(0XFF383BB1);
const Color kLightPurpleColor = Color(0XFFF5F5FF);

const Color kPrimaryTextColor = Color(0XFF19104E);
const Color kGreyTextColor = Color(0XFFA9A9AA);

final double kButtonHeight = ScreenUtil().setHeight(50);
final double kButtonRadius = ScreenUtil().radius(30);
//Body Text style
final kBodyTextStyle = TextStyle(
  color: kGreyTextColor,
  fontSize: ScreenUtil().setSp(16),
  fontWeight: FontWeight.normal,
);
//Button Text style
final kButtonTextStyle = TextStyle(
  color: kWhiteColor,
  fontSize: ScreenUtil().setSp(14),
  letterSpacing: 1.2,
  fontWeight: FontWeight.w600,
);
//Title Text style
final kTitleTextStyle = TextStyle(
  color: kPrimaryTextColor,
  fontSize: ScreenUtil().setSp(20),
  fontWeight: FontWeight.bold,
);

//Body BigTitle
final kBigTitleTextStyle = TextStyle(
  color: kWhiteColor,
  fontSize: ScreenUtil().setSp(24),
  fontWeight: FontWeight.bold,
);

final Widget defaultVerticalSpace = SizedBox(
  height: ScreenUtil().setHeight(20),
);
