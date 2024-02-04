import 'package:flutter/material.dart';
import 'package:m_s_application6/core/app_export.dart';
import 'package:m_s_application6/widgets/custom_elevated_button.dart';
import 'package:m_s_application6/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AndroidSmallOneScreen extends StatelessWidget {
  AndroidSmallOneScreen({Key? key}) : super(key: key);

  TextEditingController maleUserController = TextEditingController();

  TextEditingController secureController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(46.h),
                child: Column(children: [
                  Text("Login", style: theme.textTheme.displayMedium),
                  SizedBox(height: 18.v),
                  Container(
                      height: 180.adaptSize,
                      width: 180.adaptSize,
                      padding: EdgeInsets.all(45.h),
                      decoration: AppDecoration.fillCyan.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder90),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgAdministrativeTools,
                          height: 90.adaptSize,
                          width: 90.adaptSize,
                          alignment: Alignment.center)),
                  SizedBox(height: 60.v),
                  CustomTextFormField(
                      controller: maleUserController,
                      prefix: Container(
                          margin: EdgeInsets.fromLTRB(5.h, 4.v, 30.h, 5.v),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgMaleUser,
                              height: 45.adaptSize,
                              width: 45.adaptSize)),
                      prefixConstraints: BoxConstraints(maxHeight: 54.v)),
                  SizedBox(height: 27.v),
                  CustomTextFormField(
                      controller: secureController,
                      textInputAction: TextInputAction.done,
                      prefix: Container(
                          margin: EdgeInsets.fromLTRB(5.h, 4.v, 30.h, 5.v),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgSecure,
                              height: 45.adaptSize,
                              width: 45.adaptSize)),
                      prefixConstraints: BoxConstraints(maxHeight: 54.v),
                      obscureText: true),
                  SizedBox(height: 36.v),
                  CustomElevatedButton(
                      text: "Login",
                      margin: EdgeInsets.symmetric(horizontal: 40.h),
                      onPressed: () {
                        onTapLogin(context);
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Navigates to the mainActivityScreen when the action is triggered.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mainActivityScreen);
  }
}
