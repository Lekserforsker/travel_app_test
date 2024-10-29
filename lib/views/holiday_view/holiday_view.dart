import 'package:flutter/material.dart';
import 'package:travel_app_test/constants/app_color.dart';
import 'package:travel_app_test/views/holiday_view/widgets/app_bar_widget.dart';
import 'package:travel_app_test/views/holiday_view/widgets/post_list.dart';
import 'package:travel_app_test/views/holiday_view/widgets/story_list.dart';

class HolidayView extends StatefulWidget {
  final bool showBackButton;
  const HolidayView(
      {super.key, this.showBackButton = false}); // Default to false

  @override
  State<HolidayView> createState() => _HolidayViewState();
}

class _HolidayViewState extends State<HolidayView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.taWhiteFFFFFF,
      // Pass true to Show back button for book now button(old)
      appBar: AppBarWidget(showBackButton: widget.showBackButton),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          const SizedBox(height: 18),
          StoryList(),
          const SizedBox(height: 32),
          PostList(),
        ],
      ),
    );
  }
}
