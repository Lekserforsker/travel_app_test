import 'package:flutter/material.dart';
import 'package:travel_app_test/constants/routes.dart';
import 'package:travel_app_test/views/holiday_view/holiday_view.dart';

import '../../../constants/app_color.dart';
import '../../../constants/app_img.dart';
import '../../../constants/app_text_style.dart';
import '../../../widgets/text_button_widget.dart';

class ExploreCard extends StatelessWidget {
  const ExploreCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 177,
      margin: const EdgeInsets.only(bottom: 19),
      width: MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: const DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            AppImg.bgImg5,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Thailand",
            style: AppTextStyle.bold40.copyWith(
              height: 1,
              color: AppColor.taWhiteFFFFFF,
            ),
          ),
          Text(
            "And Explore the world",
            style: AppTextStyle.regular14.copyWith(
              color: AppColor.taWhiteFFFFFF,
            ),
          ),
          const SizedBox(height: 12),
          TextButtonWidget(
            onTap: () => {
              debugPrint("Book Now button pressed"),
              //Navigator.pushNamed(context, holiday),
              //Navigate to HolidayView with showBackButton set to true
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HolidayView(
                      showBackButton: true), // Pass true to show back button
                ),
              ),
            },
            size: const Size(69, 24),
            title: 'Book Now',
          )
        ],
      ),
    );
  }
}
