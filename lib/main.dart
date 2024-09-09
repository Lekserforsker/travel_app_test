import 'package:flutter/material.dart';
import 'package:travel_app_test/constants/routes.dart';
import 'package:travel_app_test/views/holiday_view/holiday_view.dart';
import 'package:travel_app_test/views/home_view/home_view.dart';
import 'package:travel_app_test/views/landing_view/landing_view.dart';
import 'package:travel_app_test/views/search_result_view/search_result_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      theme: ThemeData(useMaterial3: true),
      routes: {
        landing: (context) => const LandingView(),
        home: (context) => const HomeView(),
        searchResults: (context) => const SearchResultView(),
        holiday: (context) => const HolidayView(),
      },
      initialRoute: landing,
    );
  }
}
