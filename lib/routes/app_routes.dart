import 'package:flutter/material.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/four_screen/four_screen.dart';
import '../presentation/login_1_classic_screen/login_1_classic_screen.dart';
import '../presentation/login_2_special_screen/login_2_special_screen.dart';
import '../presentation/three_screen/three_screen.dart';

class AppRoutes {
  static const String login1ClassicScreen = '/login_1_classic_screen';

  static const String login2SpecialScreen = '/login_2_special_screen';

  static const String threeScreen = '/three_screen';

  static const String fourScreen = '/four_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        login1ClassicScreen: Login1ClassicScreen.builder,
        login2SpecialScreen: Login2SpecialScreen.builder,
        threeScreen: ThreeScreen.builder,
        fourScreen: FourScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: Login1ClassicScreen.builder
      };
}
