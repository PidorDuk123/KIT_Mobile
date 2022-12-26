import 'package:flutter/material.dart';
import 'package:travelappui/views/HomePage/homepage.dart';
import 'package:travelappui/views/Profile/search.dart';
import 'package:travelappui/views/SplashScreen/splashscreen.dart';
import 'package:travelappui/views/ViewDetails/viewDetails.dart';
import 'package:travelappui/views/ViewPage/admission.dart';
import 'package:travelappui/views/ViewPage/internshipProgram.dart';

class AppRoutes {
  static const String ROUTE_Initial = ROUTE_Splashscreen;

  static const String ROUTE_Home = "/home";
  static const String ROUTE_Splashscreen = "/splash";
  static const String ROUTE_ViewDetails = "/view";
  static const String ROUTE_Admission = "/admission";
  static const String ROUTE_Internship = "/internship";
  static const String ROUTE_Profile = "/profile";
  static const String ROUTE_search = "/search";

  // ignore: missing_return
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case ROUTE_Home:
        return MaterialPageRoute(
            settings: settings, builder: (_) => HomePage());
        break;
      case ROUTE_Splashscreen:
        return MaterialPageRoute(
            settings: settings, builder: (_) => SplashScreen());
        break;
      case ROUTE_ViewDetails:
        return MaterialPageRoute(
            settings: settings, builder: (_) => ViewDetails());
        break;
      case ROUTE_Admission:
        return MaterialPageRoute(
            settings: settings, builder: (_) => Admission());
        break;
      case ROUTE_Profile:
        return MaterialPageRoute(settings: settings, builder: (_) => Search());
      case ROUTE_Internship:
        return MaterialPageRoute(
            settings: settings, builder: (_) => InternshipProgram());
      case ROUTE_search:
        return MaterialPageRoute(
            settings: settings, builder: (_) => HomePage());
        break;
    }
  }
}
