import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:knob_app/configurations/app_colors.dart';
import 'package:knob_app/presentation/views/tenant_views/auth_views/forgot_password_view/forgot_password_view.dart';
import 'package:knob_app/presentation/views/tenant_views/auth_views/login_view/login_view.dart';
import 'package:knob_app/presentation/views/tenant_views/auth_views/reset_password_view/reset_password_view.dart';
import 'package:knob_app/presentation/views/tenant_views/auth_views/select_user_type_view/select_user_type_view.dart';
import 'package:knob_app/presentation/views/tenant_views/auth_views/signup_view/signup_view.dart';
import 'package:knob_app/presentation/views/tenant_views/auth_views/splash_view/splash_view.dart';

import 'route_names.dart';

class RoutesGenerator {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.splashViewRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case RouteNames.selectUserTypeViewRoute:
        return MaterialPageRoute(builder: (_) => const SelectUserTypeView());
      case RouteNames.loginViewRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case RouteNames.signUpViewRoute:
        return MaterialPageRoute(builder: (_) => const SignUpView());
      case RouteNames.forgotPasswordViewRoute:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordView());
      case RouteNames.resetPasswordViewRoute:
        return MaterialPageRoute(builder: (_) => const ResetPasswordView());
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
