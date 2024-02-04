import 'package:flutter/material.dart';
import 'package:m_s_application6/core/app_export.dart';
import 'package:m_s_application6/widgets/app_bar/appbar_title.dart';
import 'package:m_s_application6/widgets/app_bar/custom_app_bar.dart';
import 'package:m_s_application6/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class KipasScreen extends StatelessWidget {
  KipasScreen({Key? key}) : super(key: key);

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
                  SizedBox(height: 33.v),
                  _buildEight(context),
                  SizedBox(height: 21.v),
                  _buildSeven(context),
                  Spacer(),
                  SizedBox(height: 38.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                          onTap: () {
                            onTapSeventeen(context);
                          },
                          child: Container(
                              height: 65.adaptSize,
                              width: 65.adaptSize,
                              margin: EdgeInsets.only(left: 30.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.h, vertical: 13.v),
                              decoration: AppDecoration.outlineBlack900012
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder20),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgGroup27,
                                  height: 27.v,
                                  width: 42.h,
                                  alignment: Alignment.center))))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: AppbarTitle(text: "Kipas Angin"),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildEight(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 26.h, right: 29.h),
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 7.v),
        decoration: AppDecoration.outlineBlack90001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(left: 3.h, top: 8.v, bottom: 9.v),
              child: Text("Kipas Angin 1", style: theme.textTheme.titleLarge)),
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
        margin: EdgeInsets.only(left: 26.h, right: 29.h),
        padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 7.v),
        decoration: AppDecoration.outlineBlack90001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 8.v, bottom: 9.v),
              child: Text("Kipas Angin 2", style: theme.textTheme.titleLarge)),
          CustomSwitch(
              margin: EdgeInsets.only(bottom: 1.v),
              value: isSelectedSwitch1,
              onChange: (value) {
                isSelectedSwitch1 = value;
              })
        ]));
  }

  /// Navigates to the mainActivityScreen when the action is triggered.
  onTapSeventeen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainActivityScreen);
  }
}
