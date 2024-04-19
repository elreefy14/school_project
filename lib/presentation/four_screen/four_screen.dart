import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import 'bloc/four_bloc.dart';
import 'models/four_model.dart';

class FourScreen extends StatelessWidget {
  const FourScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FourBloc>(
      create: (context) => FourBloc(FourState(
        fourModelObj: FourModel(),
      ))
        ..add(FourInitialEvent()),
      child: FourScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FourBloc, FourState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 42.h,
                vertical: 47.v,
              ),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgVectorDrawGray300,
                    height: 298.v,
                    width: 229.h,
                  ),
                  SizedBox(height: 13.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 240.h,
                      margin: EdgeInsets.only(left: 50.h),
                      child: Text(
                        "msg3".tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.right,
                        style: CustomTextStyles.titleMediumRoboto.copyWith(
                          height: 1.21,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v)
                ],
              ),
            ),
            bottomNavigationBar: _buildStartButton(context),
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
  Widget _buildStartButton(BuildContext context) {
    return CustomElevatedButton(
      height: 48.v,
      width: 176.h,
      text: "lbl12".tr,
      margin: EdgeInsets.only(
        left: 99.h,
        right: 99.h,
        bottom: 44.v,
      ),
      buttonStyle: CustomButtonStyles.fillIndigoTL8,
      buttonTextStyle: CustomTextStyles.titleMediumWhiteA700,
    );
  }
}
