import '../main_activity_screen/widgets/thirtyseven_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:m_s_application6/core/app_export.dart';
import 'package:m_s_application6/widgets/app_bar/appbar_title.dart';
import 'package:m_s_application6/widgets/app_bar/custom_app_bar.dart';

class MainActivityScreen extends StatelessWidget {
  const MainActivityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildFiftyThree(context),
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 3.v),
                      child: Column(children: [
                        Divider(),
                        SizedBox(height: 42.v),
                        _buildThirtySeven(context)
                      ]))
                ]))));
  }

  /// Section Widget
  Widget _buildFiftyThree(BuildContext context) {
    return SizedBox(
        height: 65.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 21.v),
                  child: Text("Lampu",
                      style: CustomTextStyles.bodySmallBlack90001))),
          CustomAppBar(
              height: 65.v,
              centerTitle: true,
              title: AppbarTitle(text: "Main Menu"),
              styleType: Style.bgFill)
        ]));
  }

  /// Section Widget
  Widget _buildThirtySeven(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 37.h, right: 34.h),
        child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 145.v,
                crossAxisCount: 2,
                mainAxisSpacing: 38.h,
                crossAxisSpacing: 38.h),
            physics: NeverScrollableScrollPhysics(),
            itemCount: 6,
            itemBuilder: (context, index) {
              return ThirtysevenItemWidget(onTapLampuImage: () {
                onTapLampuImage(context);
              });
            }));
  }

  /// Navigates to the lampuScreen when the action is triggered.
  onTapLampuImage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.lampuScreen);
  }
}
