import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:knob_app/configurations/app_colors.dart';
import 'package:knob_app/presentation/views/tenant_views/auth_views/forgot_password_view/forgot_password_view.dart';
import 'package:knob_app/presentation/views/tenant_views/auth_views/login_view/login_view.dart';
import 'package:knob_app/presentation/views/tenant_views/auth_views/reset_password_view/reset_password_view.dart';
import 'package:knob_app/presentation/views/tenant_views/auth_views/select_user_type_view/select_user_type_view.dart';
import 'package:knob_app/presentation/views/tenant_views/auth_views/signup_view/signup_view.dart';
import 'package:knob_app/presentation/views/tenant_views/auth_views/splash_view/splash_view.dart';
import 'package:knob_app/presentation/views/tenant_views/create_profile_views/add_stay_location_view/add_stay_location_view.dart';
import 'package:knob_app/presentation/views/tenant_views/create_profile_views/select_country_view/select_country_view.dart';
import 'package:knob_app/presentation/views/tenant_views/create_profile_views/select_house_type_view/select_house_type_view.dart';
import 'package:knob_app/presentation/views/tenant_views/create_profile_views/select_stay_duration_view/select_stay_duration_view.dart';

import '../presentation/views/tenant_views/create_profile_views/name_view/name_view.dart';
import '../presentation/views/tenant_views/create_profile_views/select_age_view/select_age_view.dart';
import 'route_names.dart';

class RoutesGenerator {
  static PageRouteBuilder slideTransitionBuilder({required Widget child}) {
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => child,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          final position = animation.drive(Tween<Offset>(
              begin: const Offset(1, 0), end: const Offset(0, 0)));

          return SlideTransition(position: position, child: child);
        });

    // left to right: begin: Offset(-1,0) end: Offset(0,0)
    // right to left: begin: Offset(1,0) end: Offset(0,0)
    // bottom to top: begin: Offset(0,1) end: Offset(0,0)
    // top to bottom: begin: Offset(0,-1) end: Offset(0,0)
    // from top right corner: begin: Offset(1,-1) end: Offset(0,0)
    // from bottom right corner: begin: Offset(1,1) end: Offset(0,0)
    // from top left corner: begin: Offset(-1,-1) end: Offset(0,0)
    // from bottom left corner: begin: Offset(-1,1) end: Offset(0,0)
  }

  static PageRouteBuilder fadeTransitionBuilder({required Widget child}) {
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => child,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          final opacity = animation.drive(Tween<double>(begin: 0, end: 1));
          return FadeTransition(opacity: opacity, child: child);
        });
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.splashViewRoute:
        return slideTransitionBuilder(child: const SplashView());
      case RouteNames.selectUserTypeViewRoute:
        return slideTransitionBuilder(child: const SelectUserTypeView());
      case RouteNames.loginViewRoute:
        return slideTransitionBuilder(child: const LoginView());
      case RouteNames.signUpViewRoute:
        return slideTransitionBuilder(child: const SignUpView());
      case RouteNames.forgotPasswordViewRoute:
        return slideTransitionBuilder(child: const ForgotPasswordView());
      case RouteNames.resetPasswordViewRoute:
        return slideTransitionBuilder(child: const ResetPasswordView());
      case RouteNames.nameViewRoute:
        return slideTransitionBuilder(child: const NameView());
      case RouteNames.selectAgeViewRoute:
        return fadeTransitionBuilder(child: const SelectAgeView());
      case RouteNames.selectHouseTypeViewRoute:
        return fadeTransitionBuilder(child: const SelectHouseTypeView());
      case RouteNames.selectCountryViewRoute:
        return fadeTransitionBuilder(child: const SelectCountryView());
      case RouteNames.selectStayDurationViewRoute:
        return fadeTransitionBuilder(child: const SelectStayDurationView());
      case RouteNames.addStayLocationViewRoute:
        return fadeTransitionBuilder(child: const AddStayLocationView());
      default:
        return MaterialPageRoute(
            builder: (context) => Scaffold(
                    body: Center(
                        child: Text(
                  'No Routes',
                  style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w700,
                      color: AppColors.kBlackColor,
                      fontSize: 25),
                ))));
    }
  }
}
