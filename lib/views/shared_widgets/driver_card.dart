import 'package:quick_cab/exports.dart';

class DriverCard extends StatelessWidget {
  final String? driverName;

  const DriverCard({Key? key, this.driverName}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            backgroundColor: kLightGreyColor,
            backgroundImage: AssetImage('assets/driver_img.png'),
          ),
          SizedBox(width: ScreenUtil().setWidth(10)),
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/driver_icon.png'),
                        Text(
                          "Your captain",
                          style: kBodyTextStyle.copyWith(
                              fontSize: ScreenUtil().setSp(12),
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: ScreenUtil().setHeight(8),
                  ),
                  Text(
                    "$driverName",
                    style: kBodyTextStyle.copyWith(
                        fontSize: ScreenUtil().setSp(14),
                        fontWeight: FontWeight.w600,
                        color: kPrimaryTextColor),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/phone.png'),
                Image.asset('assets/msg.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
