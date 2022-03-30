import 'package:quick_cab/exports.dart';

class DefaultButton extends StatelessWidget {
  final String? title;
  final Function? onPressed;
  const DefaultButton({Key? key, this.title, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed!();
      },
      child: Container(
        width: double.infinity,
        //width: ScreenUtil().setWidth(300),
        height: kButtonHeight,
        child: Center(
          child: Text(
            title!,
            style: kButtonTextStyle,
          ),
        ),
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(kButtonRadius),
        ),
      ),
    );
  }
}
