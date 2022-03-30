import 'package:quick_cab/exports.dart';

class WhiteButton extends StatelessWidget {
  final String? title;
  final Function? onPressed;
  const WhiteButton({Key? key, this.title, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(35),
      width: ScreenUtil().setWidth(100),
      child: Center(
        child: Text(
          title!,
          style: kBodyTextStyle.copyWith(color: kPrimaryColor),
        ),
      ),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(kButtonRadius),
      ),
    );
  }
}
