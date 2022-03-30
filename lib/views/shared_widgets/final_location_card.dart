import 'package:quick_cab/exports.dart';

class FinalLocationCard extends StatelessWidget {
  final String? title;
  final String? locationDetails;
  final String? asset;
  const FinalLocationCard(
      {Key? key, this.title, this.locationDetails, this.asset})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: kWhiteColor,
            child: Image.asset(
              "assets/$asset.png",
              //color: kSecondaryColor,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$title",
                  style:
                      kBodyTextStyle.copyWith(fontSize: ScreenUtil().setSp(14)),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(5),
                ),
                Text(
                  "$locationDetails",
                  style: kBodyTextStyle.copyWith(
                    fontSize: ScreenUtil().setSp(16),
                    fontWeight: FontWeight.normal,
                    color: kPrimaryTextColor,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
