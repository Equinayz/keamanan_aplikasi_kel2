import 'package:flutter/material.dart';
import 'package:m_s_application6/core/app_export.dart';
import 'package:m_s_application6/widgets/app_bar/appbar_title.dart';
import 'package:m_s_application6/widgets/app_bar/custom_app_bar.dart';
import 'package:m_s_application6/widgets/custom_icon_button.dart';
import 'package:m_s_application6/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class PintuScreen extends StatelessWidget {
  PintuScreen({Key? key}) : super(key: key);

  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 2.v),
                child: Column(children: [
                  Divider(),
                  SizedBox(height: 32.v),
                  _buildSeven(context),
                  SizedBox(height: 20.v),
                  _buildEight(context),
                  Spacer(),
                  SizedBox(height: 36.v),
                  Padding(
                      padding: EdgeInsets.only(left: 30.h),
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
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: AppbarTitle(text: "Pintu"),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildSeven(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 27.h),
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 7.v),
        decoration: AppDecoration.outlineBlack90001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 7.h, top: 6.v, bottom: 11.v),
                  child: Text("Pintu 1", style: theme.textTheme.titleLarge)),
              CustomSwitch(
                  margin: EdgeInsets.only(bottom: 1.v),
                  value: isSelectedSwitch,
                  onChange: (value) {
                    isSelectedSwitch = value;
                  })
            ]));
  }

  /// Section Widget
  Widget _buildEight(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 27.h),
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 7.v),
        decoration: AppDecoration.outlineBlack90001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 7.h, top: 6.v, bottom: 11.v),
                  child: Text("Pintu 2 ", style: theme.textTheme.titleLarge)),
              CustomSwitch(
                  margin: EdgeInsets.only(bottom: 1.v),
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
