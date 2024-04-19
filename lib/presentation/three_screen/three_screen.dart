import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/three_bloc.dart';
import 'models/three_model.dart';

class ThreeScreen extends StatelessWidget {
  const ThreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ThreeBloc>(
      create: (context) => ThreeBloc(ThreeState(
        threeModelObj: ThreeModel(),
      ))
        ..add(ThreeInitialEvent()),
      child: ThreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThreeBloc, ThreeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 41.h,
                vertical: 51.v,
              ),
              child: Column(
                children: [
                  SizedBox(height: 63.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgVectorDraw,
                    height: 230.v,
                    width: 279.h,
                  ),
                  SizedBox(height: 14.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 257.h,
                      margin: EdgeInsets.only(left: 35.h),
                      child: Text(
                        "msg2".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.right,
                        style: CustomTextStyles.titleMediumRoboto.copyWith(
                          height: 1.21,
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    height: 8.v,
                    child: AnimatedSmoothIndicator(
                      activeIndex: 0,
                      count: 3,
                      effect: ScrollingDotsEffect(
                        spacing: 9,
                        activeDotColor: appTheme.gray800,
                        dotColor: appTheme.gray800.withOpacity(0.6),
                        dotHeight: 8.v,
                        dotWidth: 8.h,
                      ),
                    ),
                  )
                ],
              ),
            ),
            bottomNavigationBar: _buildNextButton(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 52.v,
      actions: [
        AppbarTitle(
          text: "lbl10".tr,
          margin: EdgeInsets.symmetric(
            horizontal: 12.h,
            vertical: 18.v,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildNextButton(BuildContext context) {
    return CustomElevatedButton(
      height: 48.v,
      width: 128.h,
      text: "lbl11".tr,
      margin: EdgeInsets.only(
        left: 123.h,
        right: 123.h,
        bottom: 44.v,
      ),
      buttonStyle: CustomButtonStyles.fillIndigoTL8,
      buttonTextStyle: CustomTextStyles.titleMediumWhiteA700,
    );
  }
}
