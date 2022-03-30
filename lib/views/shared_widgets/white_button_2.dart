import 'package:quick_cab/exports.dart';

class WhiteButton2 extends StatelessWidget {
  final String? title;
  final Function? onPressed;
  const WhiteButton2({Key? key, this.title, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: ScreenUtil().setWidth(10),
      ),
      height: ScreenUtil().setHeight(40),
      width: ScreenUtil().setWidth(130),
      child: Center(
        child: Text(
          title!,
          style: kBodyTextStyle.copyWith(
            color: kPrimaryColor,
            fontSize: ScreenUtil().setSp(14),
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(kButtonRadius),
      ),
    );
  }
}
