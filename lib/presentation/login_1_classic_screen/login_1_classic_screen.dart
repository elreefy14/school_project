import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import '../login_2_special_screen/login_2_special_screen.dart';
import 'bloc/login_1_classic_bloc.dart';
import 'models/login_1_classic_model.dart';

class Login1ClassicScreen extends StatelessWidget {
  const Login1ClassicScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<Login1ClassicBloc>(
      create: (context) => Login1ClassicBloc(Login1ClassicState(
        login1ClassicModelObj: Login1ClassicModel(),
      ))
        ..add(Login1ClassicInitialEvent()),
      child: Login1ClassicScreen(),
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
              _buildLoginClassic(context),
              Container(
                padding: EdgeInsets.symmetric(vertical: 40.v),
                child: Column(
                  children: [
                    _buildRowTelevision(context),
                    SizedBox(height: 32.v),
                    _buildUsernameOne(context),
                    SizedBox(height: 26.v),
                    _buildCodeOne(context),
                    // SizedBox(height: 26.v),
                    // _buildPasswordOne(context),
                    SizedBox(height: 32.v),
                    _buildLoginButton(context),
                    SizedBox(height: 9.v),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Login2SpecialScreen()),
                        );
                      },
                      style: ButtonStyle(
                          overlayColor: WidgetStateProperty.resolveWith<Color>(
                        (Set<WidgetState> states) {
                          if (states.contains(MaterialState.pressed)) {
                            return Color(
                                0xffefefef); // Change this to the desired color
                          }
                          return Colors
                              .transparent; // Use the default color if the button is not pressed
                        },
                      )),
                      child: Text(
                        "lbl7".tr,
                        style: CustomTextStyles.bodySmallBlueA400d8.copyWith(
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.blue,
                        ),
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
  Widget _buildLoginClassic(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.v),
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
                  children: [],
                ),
              )
            ],
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.only(right: 25.h),
            child: Text(
              "lbl".tr,
              style: theme.textTheme.titleLarge,
            ),
          ),
          SizedBox(height: 28.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowTelevision(BuildContext context) {
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
              ),
              child: _buildColumnSettings(
                context,
                imageSettings: ImageConstant.imgTelevision,
                prop: "lbl2".tr,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: _buildColumnSettings(
                context,
                imageSettings: ImageConstant.imgSettings,
                prop: "lbl3".tr,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUsernameOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 27.h),
      child: BlocSelector<Login1ClassicBloc, Login1ClassicState,
          TextEditingController?>(
        selector: (state) => state.usernameOneController,
        builder: (context, usernameOneController) {
          return CustomTextFormField(
            controller: usernameOneController,
            hintText: "lbl4".tr,
            textStyle: TextStyle(color: Colors.black),
            prefix: Container(
              margin: EdgeInsets.fromLTRB(16.h, 16.v, 30.h, 16.v),
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
    );
  }

  /// Section Widget
  Widget _buildCodeOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 27.h),
      child: BlocSelector<Login1ClassicBloc, Login1ClassicState,
          TextEditingController?>(
        selector: (state) => state.codeOneController,
        builder: (context, codeOneController) {
          return CustomTextFormField(
            controller: codeOneController,
            hintText: "lbl5".tr,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(16.h, 16.v, 30.h, 16.v),
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
    );
  }

  /// Section Widget
  // Widget _buildPasswordOne(BuildContext context) {
  //   return Padding(
  //     padding: EdgeInsets.symmetric(horizontal: 27.h),
  //     child: BlocSelector<Login1ClassicBloc, Login1ClassicState,
  //         TextEditingController?>(
  //       selector: (state) => state.passwordOneController,
  //       builder: (context, passwordOneController) {
  //         return CustomTextFormField(
  //           controller: passwordOneController,
  //           hintText: "lbl6".tr,
  //           textInputAction: TextInputAction.done,
  //           prefix: Container(
  //             margin: EdgeInsets.fromLTRB(16.h, 16.v, 30.h, 16.v),
  //             child: CustomImageView(
  //               imagePath: ImageConstant.imgInbox,
  //               height: 24.adaptSize,
  //               width: 24.adaptSize,
  //             ),
  //           ),
  //           prefixConstraints: BoxConstraints(
  //             maxHeight: 56.v,
  //           ),
  //         );
  //       },
  //     ),
  //   );
  // }

  /// Section Widget
  Widget _buildLoginButton(BuildContext context) {
    return CustomElevatedButton(
      width: 142.h,
      text: "lbl".tr,
      buttonTextStyle: CustomTextStyles.titleMediumWhiteA700,
    );
  }

  /// Common widget
  Widget _buildColumnSettings(
    BuildContext context, {
    required String imageSettings,
    required String prop,
  }) {
    return Column(
      children: [
        GestureDetector(
            onTap: () {
              print('gggggggggggggggggg');
            },
            child: Container(
              height: 75.adaptSize,
              width: 75.adaptSize,
              padding: EdgeInsets.all(12.h),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadiusStyle.roundedBorder37,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    // Black color with 5% opacity
                    blurRadius: 10.0,
                    offset: Offset(0, 2), // Y: 2, X: 0
                  ),
                ],
              ),
              child: CustomImageView(
                imagePath: imageSettings,
                height: 50.adaptSize,
                width: 50.adaptSize,
                alignment: Alignment.center,
              ),
            )),
        SizedBox(height: 13.v),
        Text(
          prop,
          style: theme.textTheme.titleMedium!.copyWith(
            color: appTheme.black900,
          ),
        )
      ],
    );
  }
}
