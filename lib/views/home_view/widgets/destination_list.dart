import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app_test/constants/app_img.dart';
import '../../../constants/app_color.dart';
import '../../../constants/app_svg.dart';
import '../../../constants/app_text_style.dart';
import '../../../widgets/text_button_widget.dart';
import 'dart:math' as math;

class DestinationList extends StatelessWidget {
  const DestinationList({super.key});

  // in real implementation this could be handled with box type
  bool isBigBox(i) => i == 0 || i == 3 || i == 6 ? true : false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 32),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "What Destination do you\nlike to go to?",
              style: AppTextStyle.semiBold16.copyWith(
                color: AppColor.taBlack1F1F1F,
              ),
            ),
            TextButtonWidget(
              onTap: () => debugPrint("See More button pressed"),
              size: const Size(78, 28),
              borderRadius: 8,
              title: 'See More',
            ),
          ],
        ),
        const SizedBox(height: 16),
        Wrap(
          spacing: 16,
          runSpacing: 16,
          direction: Axis.horizontal,
          children: [
            for (int i = 0; i < 7; i++)
              Container(
                padding: isBigBox(i)
                    ? const EdgeInsets.all(15)
                    : const EdgeInsets.all(5),
                width: isBigBox(i)
                    ? MediaQuery.sizeOf(context).width
                    : MediaQuery.sizeOf(context).width * .44,
                height: 160,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      isBigBox(i)
                          ? AppImg.bgImg8
                          : [
                              AppImg.bgImg7,
                              AppImg.bgImg6,
                              AppImg.bgImg7
                            ][math.Random().nextInt(2)],
                    ),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: isBigBox(i)
                          ? Alignment.topLeft
                          : Alignment.bottomLeft,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            AppSvg.locationCurved,
                            height: 20,
                            width: 20,
                            color: AppColor.taWhiteFFFFFF,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            "Dubai",
                            style: AppTextStyle.medium20.copyWith(
                              color: AppColor.taWhiteFFFFFF,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CircleAvatar(
                      radius: 12,
                      backgroundColor: AppColor.taGrey6E6E6E.withOpacity(.46),
                      child: Center(
                        child: SvgPicture.asset(
                          AppSvg.favoriteCurved,
                          color: AppColor.taWhiteFFFFFF,
                          height: 12,
                          width: 13.2,
                        ),
                      ),
                    )
                  ],
                ),
              ),
          ],
        )
      ],
    );
  }
}
