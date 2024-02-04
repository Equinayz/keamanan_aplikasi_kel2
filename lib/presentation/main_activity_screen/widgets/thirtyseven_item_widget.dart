import 'package:flutter/material.dart';
import 'package:m_s_application6/core/app_export.dart';

// ignore: must_be_immutable
class ThirtysevenItemWidget extends StatelessWidget {
  ThirtysevenItemWidget({
    Key? key,
    this.onTapLampuImage,
  }) : super(
          key: key,
        );

  VoidCallback? onTapLampuImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            onTapLampuImage!.call();
          },
          child: Container(
            height: 123.v,
            width: 125.h,
            padding: EdgeInsets.symmetric(
              horizontal: 12.h,
              vertical: 11.v,
            ),
            decoration: AppDecoration.outlineBlack.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgLamp,
              height: 90.adaptSize,
              width: 90.adaptSize,
              alignment: Alignment.center,
            ),
          ),
        ),
        SizedBox(height: 9.v),
        Text(
          "Lampu",
          style: theme.textTheme.bodySmall,
        ),
      ],
    );
  }
}
