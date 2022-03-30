import 'package:quick_cab/exports.dart';

class NavigationItem extends StatelessWidget {
  final String? assetIcon;
  final String? title;
  final bool? isActive;
  final Function? onPressed;
  const NavigationItem(
      {Key? key, this.onPressed, this.assetIcon, this.title, this.isActive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed!();
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 1000),
        padding: EdgeInsets.symmetric(
            horizontal: ScreenUtil().setWidth(10),
            vertical: ScreenUtil().setHeight(5)),
        decoration: BoxDecoration(
            color: isActive! ? kLightPurpleColor : kWhiteColor,
            borderRadius: BorderRadius.circular(ScreenUtil().radius(20))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/$assetIcon",
              color: isActive! ? kPrimaryColor : kGreyTextColor,
              height: ScreenUtil().setHeight(20),
              width: ScreenUtil().setWidth(20),
            ),
            SizedBox(
              width: ScreenUtil().setHeight(5),
            ),
            Text(
              isActive! ? title! : "",
              style: kBodyTextStyle.copyWith(
                  color: isActive! ? kPrimaryColor : kLightGreyColor,
                  fontSize: ScreenUtil().setSp(14)),
            )
          ],
        ),
      ),
    );
  }
}
