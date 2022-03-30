import 'package:quick_cab/exports.dart';

class LocationCard extends StatelessWidget {
  final String? locationName;
  final String? locationDetails;
  final Function? onPressed;
  const LocationCard(
      {Key? key, this.locationName, this.locationDetails, this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        onPressed!();
      },
      contentPadding: const EdgeInsets.all(0.0),
      leading: const CircleAvatar(
        backgroundColor: kLightPurpleColor,
        backgroundImage: AssetImage('assets/loc_history.png'),
      ),
      title: Text(
        "$locationName",
        style: kBodyTextStyle.copyWith(
            fontSize: ScreenUtil().setSp(14),
            fontWeight: FontWeight.w600,
            color: kPrimaryTextColor),
      ),
      subtitle: Text(
        "$locationDetails",
        style: kBodyTextStyle.copyWith(
            fontSize: ScreenUtil().setSp(12), fontWeight: FontWeight.w500),
      ),
    );
  }
}
