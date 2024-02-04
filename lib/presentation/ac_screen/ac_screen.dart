import 'package:flutter/material.dart';
import 'package:m_s_application6/core/app_export.dart';
import 'package:m_s_application6/widgets/app_bar/appbar_title.dart';
import 'package:m_s_application6/widgets/app_bar/custom_app_bar.dart';
import 'package:m_s_application6/widgets/custom_icon_button.dart';
import 'package:m_s_application6/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class AcScreen extends StatelessWidget {
  AcScreen({Key? key}) : super(key: key);

  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: SizedBox(
                height: SizeUtils.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          decoration: AppDecoration.fillBlueGray,
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            _buildAppBar(context),
                            SizedBox(height: 43.v),
                            _buildSix(context),
                            SizedBox(height: 13.v),
                            _buildSeven(context),
                            Spacer(),
                            SizedBox(height: 38.v),
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
                          ]))),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: EdgeInsets.only(top: 66.v),
                          child: SizedBox(width: 359.h, child: Divider())))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: AppbarTitle(text: "Air Conditioner"),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildSix(BuildContext context) {
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
                  child: Text("AC 1", style: theme.textTheme.titleLarge)),
              CustomSwitch(
                  margin: EdgeInsets.only(top: 1.v),
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
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 7.v),
        decoration: AppDecoration.outlineBlack90001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 6.h, top: 6.v, bottom: 11.v),
                  child: Text("AC 2", style: theme.textTheme.titleLarge)),
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
