import 'package:quick_cab/exports.dart';

class VehicleOptionButton extends StatelessWidget {
  final String? asset;
  final String? name;
  final Function? onPressed;
  const VehicleOptionButton({Key? key, this.asset, this.name, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return InkWell(
      onTap: () {
        onPressed!();
      },
      child: Container(
        height: ScreenUtil().setHeight(108),
        margin: EdgeInsets.only(right: ScreenUtil().setWidth(5)),
        child: Column(
          children: [
            Container(
              height: ScreenUtil().setHeight(71),
              decoration: BoxDecoration(
                  color: kLightPurpleColor,
                  borderRadius: BorderRadius.circular(ScreenUtil().radius(25))),
              child: Center(
                child: Text(
                  "$asset",
                  style: TextStyle(fontSize: ScreenUtil().setSp(30)),
                ),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(15),
            ),
            Text(
              "$name",
              style: kTitleTextStyle.copyWith(
                  fontSize: ScreenUtil().setSp(14),
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
