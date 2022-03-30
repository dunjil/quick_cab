import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:quick_cab/exports.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NavigationColor.whiteNavigation();
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: kWhiteColor,
          padding: EdgeInsets.symmetric(
            vertical: ScreenUtil().setHeight(15),
            horizontal: ScreenUtil().setWidth(
              1,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: ScreenUtil().setHeight(115),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setWidth(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome to Quick Cab 🚕",
                            style: kTitleTextStyle,
                            textAlign: TextAlign.left,
                          ),
                          defaultVerticalSpace,
                          Text(
                            "The fastest app to book a taxi, scooter, or a bike online near by you ",
                            style: kBodyTextStyle,
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(20),
                          ),
                          Container(
                            height: ScreenUtil().setHeight(115),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                ScreenUtil().radius(15),
                              ),
                              border: Border.all(
                                  color: kLightGreyColor, width: 1.5),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: ScreenUtil().setHeight(47.85),
                                  //width: double.infinity,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: ScreenUtil().setWidth(10),
                                      vertical: ScreenUtil().setHeight(2)),
                                  child: Row(
                                    children: [
                                      Flexible(
                                        flex: 3,
                                        child: CountryPickerDropdown(
                                          icon: const Icon(
                                              Icons.keyboard_arrow_down),
                                          initialValue: 'AR',
                                          itemBuilder: _buildDropdownItem,
                                          sortComparator: (Country a,
                                                  Country b) =>
                                              a.isoCode.compareTo(b.isoCode),
                                          onValuePicked: (Country country) {
                                            print("${country.name}");
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Divider(
                                  thickness: 1.5,
                                  color: kLightGreyColor,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: ScreenUtil().setWidth(5),
                                      vertical: ScreenUtil().setHeight(5)),
                                  height: ScreenUtil().setHeight(47.85),
                                  child: TextFormField(
                                    cursorColor: Colors.grey,
                                    keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal:
                                                ScreenUtil().setWidth(15),
                                            vertical:
                                                ScreenUtil().setHeight(15)),
                                        hintText: "Phone Number",
                                        labelStyle: kBodyTextStyle,
                                        hintStyle: kBodyTextStyle),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(17),
                          ),
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(style: kBodyTextStyle, children: [
                              const TextSpan(
                                  text:
                                      "By clicking on “Continue” you are agreeing to our "),
                              TextSpan(
                                text: "terms of use ",
                                style: kBodyTextStyle.copyWith(
                                    color: kPrimaryColor,
                                    decoration: TextDecoration.underline),
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(30),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().setWidth(
                      12,
                    ),
                  ),
                  child: DefaultButton(
                    title: "Continue",
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ScreenNavigation()));
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDropdownItem(Country country) => Container(
        width: ScreenUtil().setWidth(270),
        child: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                CountryPickerUtils.getDefaultFlagImage(country),
                SizedBox(
                  width: ScreenUtil().setWidth(5),
                ),
                Text(
                  "${country.name} (+${country.phoneCode})",
                  style: kBodyTextStyle.copyWith(
                    color: kPrimaryTextColor,
                    fontWeight: FontWeight.w400,
                    fontSize: ScreenUtil().setSp(14),
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 1,
                ),
              ],
            ),
          ),
        ),
      );
}
