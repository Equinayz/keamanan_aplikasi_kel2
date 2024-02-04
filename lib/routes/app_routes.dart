import 'package:flutter/material.dart';
import 'package:m_s_application6/presentation/android_small_one_screen/android_small_one_screen.dart';
import 'package:m_s_application6/presentation/main_activity_screen/main_activity_screen.dart';
import 'package:m_s_application6/presentation/lampu_screen/lampu_screen.dart';
import 'package:m_s_application6/presentation/termo_screen/termo_screen.dart';
import 'package:m_s_application6/presentation/ac_screen/ac_screen.dart';
import 'package:m_s_application6/presentation/pintu_screen/pintu_screen.dart';
import 'package:m_s_application6/presentation/galon_screen/galon_screen.dart';
import 'package:m_s_application6/presentation/kipas_screen/kipas_screen.dart';
import 'package:m_s_application6/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String androidSmallOneScreen = '/android_small_one_screen';

  static const String mainActivityScreen = '/main_activity_screen';

  static const String lampuScreen = '/lampu_screen';

  static const String termoScreen = '/termo_screen';

  static const String acScreen = '/ac_screen';

  static const String pintuScreen = '/pintu_screen';

  static const String galonScreen = '/galon_screen';

  static const String kipasScreen = '/kipas_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    androidSmallOneScreen: (context) => AndroidSmallOneScreen(),
    mainActivityScreen: (context) => MainActivityScreen(),
    lampuScreen: (context) => LampuScreen(),
    termoScreen: (context) => TermoScreen(),
    acScreen: (context) => AcScreen(),
    pintuScreen: (context) => PintuScreen(),
    galonScreen: (context) => GalonScreen(),
    kipasScreen: (context) => KipasScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
