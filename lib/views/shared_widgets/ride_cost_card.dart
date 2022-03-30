import 'package:quick_cab/exports.dart';

class RideCostCard extends StatelessWidget {
  final String? title;
  final String? cardNumber;
  final String? rideAmount;

  const RideCostCard({Key? key, this.title, this.cardNumber, this.rideAmount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(10)),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$title",
            style: kBodyTextStyle.copyWith(fontSize: ScreenUtil().setSp(12)),
          ),
          SizedBox(
            height: ScreenUtil().setHeight(8),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  "Card:  ................. $cardNumber",
                  style: kTitleTextStyle.copyWith(
                    fontSize: ScreenUtil().setSp(14),
                  ),
                ),
              ),
              Text(
                "\$$rideAmount",
                style: kTitleTextStyle.copyWith(
                    color: kSecondaryColor, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
