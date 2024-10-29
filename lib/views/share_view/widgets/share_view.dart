import 'package:flutter/material.dart';
import 'package:travel_app_test/views/holiday_view/holiday_view.dart';
import 'package:travel_app_test/views/holiday_view/widgets/app_bar_widget.dart';

//after tapped on the "Share" icon in bottom navigation bar (better make it in spearet file or keep it in landing view?)
class ShareView extends StatelessWidget {
  const ShareView({super.key});

  @override
  Widget build(BuildContext context) {
    //Pass false to hide back button for share view
    return const HolidayView();
    //proplem: pop arrow to  nowhere..
    // return Scaffold(
    //   //appBar: AppBarWidget(showBackButton: false), // Hide back button
    //   body: const HolidayView(
    //       showBackButton: false), // Use the same HolidayView content
    // );
  }
}
