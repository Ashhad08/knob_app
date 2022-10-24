import 'package:flutter/material.dart';
import 'package:knob_app/configurations/app_theme.dart';
import 'package:knob_app/navigation/route_names.dart';
import 'package:knob_app/navigation/routes_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Knob App',
      theme: AppTheme.kThemeData(context),
      initialRoute: RouteNames.splashViewRoute,
      onGenerateRoute: RoutesGenerator.onGenerateRoute,
    );
  }
}
