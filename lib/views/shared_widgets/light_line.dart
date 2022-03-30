import 'package:quick_cab/exports.dart';

class LightLine extends StatelessWidget {
  const LightLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Divider(
        color: kLightPurpleColor,
        thickness: 0.7,
      ),
    );
  }
}
