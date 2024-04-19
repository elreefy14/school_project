import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/login_2_special_bloc.dart';
import 'models/login_2_special_model.dart';

class Login2SpecialScreen extends StatelessWidget {
  const Login2SpecialScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Login2SpecialBloc>(
      create: (context) => Login2SpecialBloc(Login2SpecialState(
        login2SpecialModelObj: Login2SpecialModel(),
      ))
        ..add(Login2SpecialInitialEvent()),
      child: Login2SpecialScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildLoginScreen(context),
              Container(
                padding: EdgeInsets.symmetric(vertical: 40.v),
                child: Column(
                  children: [
                    _buildRowiconseight(context),
                    SizedBox(height: 32.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 27.h),
                      child: BlocSelector<Login2SpecialBloc, Login2SpecialState,
                          TextEditingController?>(
                        selector: (state) => state.usernameoneController,
                        builder: (context, usernameoneController) {
                          return CustomTextFormField(
                            controller: usernameoneController,
                            hintText: "lbl4".tr,
                            prefix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(16.h, 16.v, 30.h, 16.v),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgInbox,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                              ),
                            ),
                            prefixConstraints: BoxConstraints(
                              maxHeight: 56.v,
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 26.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 27.h),
                      child: BlocSelector<Login2SpecialBloc, Login2SpecialState,
                          TextEditingController?>(
                        selector: (state) => state.codeoneController,
                        builder: (context, codeoneController) {
                          return CustomTextFormField(
                            controller: codeoneController,
                            hintText: "lbl5".tr,
                            textInputAction: TextInputAction.done,
                            prefix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(16.h, 16.v, 30.h, 16.v),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgCheckmark,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                              ),
                            ),
                            prefixConstraints: BoxConstraints(
                              maxHeight: 56.v,
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 32.v),
                    CustomElevatedButton(
                      width: 142.h,
                      text: "lbl".tr,
                      buttonTextStyle: CustomTextStyles.titleMediumWhiteA700,
                    ),
                    SizedBox(height: 9.v),
                    Text(
                      "msg".tr,
                      style: CustomTextStyles.bodySmallBlueA400d8.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    SizedBox(height: 5.v)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLoginScreen(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.v),
      decoration: AppDecoration.fillIndigo,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomAppBar(
            actions: [
              Container(
                height: 15.000002.v,
                width: 17.380005.h,
                margin: EdgeInsets.fromLTRB(19.h, 4.v, 19.h, 5.v),
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgVector,
                      height: 1.v,
                      width: 17.h,
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(
                        top: 7.v,
                        bottom: 6.v,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgVectorWhiteA700,
                      height: 15.v,
                      width: 8.h,
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.only(left: 9.h),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.only(right: 25.h),
            child: Text(
              "lbl7".tr,
              style: theme.textTheme.titleLarge,
            ),
          ),
          SizedBox(height: 28.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowiconseight(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 100.h),
      decoration: AppDecoration.outlineBlack,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                top: 3.v,
                right: 12.h,
                bottom: 1.v,
              ),
              child: _buildAdminSection(
                context,
                icon: ImageConstant.imgIcons8Management,
                text: "lbl8".tr,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                bottom: 1.v,
              ),
              child: _buildAdminSection(
                context,
                icon: ImageConstant.imgIcons8SecurityConfiguration,
                text: "lbl9".tr,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildAdminSection(
    BuildContext context, {
    required String icon,
    required String text,
  }) {
    return Column(
      children: [
        Container(
          height: 75.adaptSize,
          width: 75.adaptSize,
          padding: EdgeInsets.all(12.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadiusStyle.roundedBorder37,
          ),
          child: CustomImageView(
            imagePath: icon,
            height: 50.adaptSize,
            width: 50.adaptSize,
            alignment: Alignment.center,
          ),
        ),
        SizedBox(height: 12.v),
        Text(
          text,
          style: theme.textTheme.titleMedium!.copyWith(
            color: appTheme.black900,
          ),
        )
      ],
    );
  }
}
