import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app_test/constants/routes.dart';
import 'package:travel_app_test/view_model/holiday_viewmodel.dart';
import 'package:travel_app_test/view_model/home_viewmodel.dart';
import 'package:travel_app_test/views/holiday_view/holiday_view.dart';
import 'package:travel_app_test/views/home_view/home_view.dart';
import 'package:travel_app_test/views/landing_view/landing_view.dart';
import 'package:travel_app_test/views/search_result_view/search_result_view.dart';
import 'package:travel_app_test/view_model/landing_viewmodel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LandingViewmodel()),
        ChangeNotifierProvider(create: (context) => HomeViewmodel()),
        ChangeNotifierProvider(create: (context) => HolidayViewmodel()),
      ],
      child: MaterialApp(
        title: 'Travel App',
        theme: ThemeData(useMaterial3: true),
        routes: {
          landing: (context) => const LandingView(),
          home: (context) => const HomeView(),
          searchResults: (context) => const SearchResultView(),
          holiday: (context) => const HolidayView(),
        },
        initialRoute: landing,
      ),
    );
  }
}
