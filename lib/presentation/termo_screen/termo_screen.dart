import 'package:flutter/material.dart';
import 'package:m_s_application6/core/app_export.dart';
import 'package:m_s_application6/widgets/app_bar/appbar_title.dart';
import 'package:m_s_application6/widgets/app_bar/custom_app_bar.dart';
import 'package:m_s_application6/widgets/custom_icon_button.dart';
import 'package:m_s_application6/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class TermoScreen extends StatelessWidget {
  TermoScreen({Key? key}) : super(key: key);

  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

  bool isSelectedSwitch2 = false;

  bool isSelectedSwitch3 = false;

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
                  SizedBox(height: 38.v),
                  _buildThermostatControls(context),
                  SizedBox(height: 15.v),
                  _buildThermostatSettings(context),
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
        title: AppbarTitle(text: "Thermostat"),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildThermostatControls(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        color: appTheme.red300,
        shape: RoundedRectangleBorder(
            side: BorderSide(color: appTheme.black90001, width: 4.h),
            borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Container(
            height: 60.v,
            width: 305.h,
            decoration: AppDecoration.outlineBlack90001
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
            child: Stack(alignment: Alignment.center, children: [
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 14.h, vertical: 11.v),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding:
                                    EdgeInsets.only(top: 5.v, bottom: 11.v),
                                child: Text("Thermostat 1",
                                    style: theme.textTheme.titleLarge)),
                            CustomSwitch(
                                value: isSelectedSwitch,
                                onChange: (value) {
                                  isSelectedSwitch = value;
                                })
                          ]))),
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 11.h, vertical: 6.v),
                      decoration: AppDecoration.outlineBlack900011.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder12),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding:
                                    EdgeInsets.only(top: 7.v, bottom: 12.v),
                                child: Text("Thermostat 1",
                                    style: theme.textTheme.titleLarge)),
                            CustomSwitch(
                                margin: EdgeInsets.only(top: 3.v, right: 5.h),
                                value: isSelectedSwitch1,
                                onChange: (value) {
                                  isSelectedSwitch1 = value;
                                })
                          ])))
            ])));
  }

  /// Section Widget
  Widget _buildThermostatSettings(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        color: appTheme.red300,
        shape: RoundedRectangleBorder(
            side: BorderSide(color: appTheme.black90001, width: 4.h),
            borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Container(
            height: 60.v,
            width: 305.h,
            decoration: AppDecoration.outlineBlack90001
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
            child: Stack(alignment: Alignment.center, children: [
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 13.h, vertical: 11.v),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding:
                                    EdgeInsets.only(top: 5.v, bottom: 11.v),
                                child: Text("Thermostat 2",
                                    style: theme.textTheme.titleLarge)),
                            CustomSwitch(
                                value: isSelectedSwitch2,
                                onChange: (value) {
                                  isSelectedSwitch2 = value;
                                })
                          ]))),
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 9.h, vertical: 7.v),
                      decoration: AppDecoration.outlineBlack900011.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder12),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding:
                                    EdgeInsets.only(top: 6.v, bottom: 11.v),
                                child: Text("Thermostat 2",
                                    style: theme.textTheme.titleLarge)),
                            CustomSwitch(
                                margin: EdgeInsets.only(top: 1.v, right: 7.h),
                                value: isSelectedSwitch3,
                                onChange: (value) {
                                  isSelectedSwitch3 = value;
                                })
                          ])))
            ])));
  }

  /// Navigates to the mainActivityScreen when the action is triggered.
  onTapBtnIconButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainActivityScreen);
  }
}
