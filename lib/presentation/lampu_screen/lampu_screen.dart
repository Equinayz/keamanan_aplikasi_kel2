import 'package:flutter/material.dart';
import 'package:m_s_application6/core/app_export.dart';
import 'package:m_s_application6/widgets/custom_icon_button.dart';
import 'package:m_s_application6/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class LampuScreen extends StatelessWidget {
  LampuScreen({Key? key}) : super(key: key);

  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildLampuSection(context),
                  Divider(),
                  SizedBox(height: 41.v),
                  _buildLampuCounterSection(context),
                  SizedBox(height: 13.v),
                  _buildSwitchTwoSection(context),
                  Spacer(),
                  SizedBox(height: 38.v),
                  Padding(
                      padding: EdgeInsets.only(left: 28.h),
                      child: CustomIconButton(
                          height: 65.adaptSize,
                          width: 65.adaptSize,
                          padding: EdgeInsets.all(11.h),
                          alignment: Alignment.centerLeft,
                          onTap: () {
                            onTapBtnIconButton(context);
                          },
                          child: CustomImageView(
                              imagePath: ImageConstant.imgGroup27)))
                ]))));
  }

  /// Section Widget
  Widget _buildLampuSection(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 148.h, vertical: 13.v),
        decoration: AppDecoration.fillCyan,
        child: Column(children: [
          SizedBox(height: 19.v),
          Text("Lampu", style: CustomTextStyles.titleLargeBluegray900)
        ]));
  }

  /// Section Widget
  Widget _buildLampuCounterSection(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 27.h),
        padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 7.v),
        decoration: AppDecoration.outlineBlack90001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(left: 13.h, top: 8.v, bottom: 9.v),
              child: Text("Lampu 1", style: theme.textTheme.titleLarge)),
          CustomSwitch(
              margin: EdgeInsets.only(top: 1.v),
              value: isSelectedSwitch,
              onChange: (value) {
                isSelectedSwitch = value;
              })
        ]));
  }

  /// Section Widget
  Widget _buildSwitchTwoSection(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 27.h),
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 7.v),
        decoration: AppDecoration.outlineBlack90001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(left: 13.h, top: 8.v, bottom: 9.v),
              child: Text("Lampu 2", style: theme.textTheme.titleLarge)),
          CustomSwitch(
              margin: EdgeInsets.only(top: 1.v),
              value: isSelectedSwitch1,
              onChange: (value) {
                isSelectedSwitch1 = value;
              })
        ]));
  }

  /// Navigates to the mainActivityScreen when the action is triggered.
  onTapBtnIconButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainActivityScreen);
  }
}
