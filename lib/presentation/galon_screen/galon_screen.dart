import 'package:flutter/material.dart';
import 'package:m_s_application6/core/app_export.dart';
import 'package:m_s_application6/widgets/app_bar/appbar_title.dart';
import 'package:m_s_application6/widgets/app_bar/custom_app_bar.dart';
import 'package:m_s_application6/widgets/custom_icon_button.dart';
import 'package:m_s_application6/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class GalonScreen extends StatelessWidget {
  GalonScreen({Key? key}) : super(key: key);

  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  Divider(),
                  SizedBox(height: 36.v),
                  _buildEight(context),
                  SizedBox(height: 18.v),
                  _buildSeven(context),
                  Spacer(),
                  SizedBox(height: 38.v),
                  Padding(
                      padding: EdgeInsets.only(left: 30.h),
                      child: CustomIconButton(
                          height: 65.adaptSize,
                          width: 65.adaptSize,
                          padding: EdgeInsets.all(9.h),
                          alignment: Alignment.centerLeft,
                          onTap: () {
                            onTapBtnIconButton(context);
                          },
                          child: CustomImageView(
                              imagePath: ImageConstant.imgGroup27)))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: AppbarTitle(text: "Dispenser"),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildEight(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 27.h),
        padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 7.v),
        decoration: AppDecoration.outlineBlack90001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 9.v, bottom: 8.v),
              child: Text("Dispenser 1", style: theme.textTheme.titleLarge)),
          CustomSwitch(
              margin: EdgeInsets.only(bottom: 1.v),
              value: isSelectedSwitch,
              onChange: (value) {
                isSelectedSwitch = value;
              })
        ]));
  }

  /// Section Widget
  Widget _buildSeven(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 27.h),
        padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 6.v),
        decoration: AppDecoration.outlineBlack90001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 10.v, bottom: 9.v),
              child: Text("Dispenser 2", style: theme.textTheme.titleLarge)),
          CustomSwitch(
              margin: EdgeInsets.only(top: 3.v),
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
