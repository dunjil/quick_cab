import 'package:quick_cab/exports.dart';

class ProfileItem extends StatelessWidget {
  final String? title;
  final String? asset;
  const ProfileItem({Key? key, this.title, this.asset}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: ScreenUtil().setHeight(2),
      ),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundColor: kLightPurpleColor,
            backgroundImage: AssetImage('assets/$asset'),
          ),
          SizedBox(
            width: ScreenUtil().setWidth(10),
          ),
          Expanded(
            flex: 2,
            child: Text(
              '$title',
              style: kBodyTextStyle.copyWith(color: kPrimaryTextColor),
              textAlign: TextAlign.left,
            ),
          ),
          const CircleAvatar(
            backgroundColor: kWhiteColor,
            child: Icon(
              Icons.chevron_right,
              color: kBlackColor,
            ),
          )
        ],
      ),
    );
  }
}
