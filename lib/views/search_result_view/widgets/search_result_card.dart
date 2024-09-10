import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants/app_color.dart';
import '../../../constants/app_img.dart';
import '../../../constants/app_svg.dart';
import '../../../constants/app_text_style.dart';
import '../../../widgets/text_button_widget.dart';

class SearchResultCard extends StatelessWidget {
  const SearchResultCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColor.taWhiteFFFFFF,
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            offset: const Offset(0, 1),
            color: AppColor.taWhiteFFB2B2B2.withOpacity(.25),
          )
        ],
      ),
      child: Column(
        children: [
          Container(
            clipBehavior: Clip.none,
            height: 176,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AppImg.bgImg9),
              ),
            ),
            padding: const EdgeInsets.all(10),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 20,
                    width: 60,
                    decoration: BoxDecoration(
                      color: AppColor.taWhiteFFFFFF,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(AppImg.fire, width: 10, height: 12),
                        const SizedBox(width: 1.71),
                        Text(
                          "Trending",
                          style: AppTextStyle.semiBold9
                              .copyWith(color: AppColor.taBlack191919),
                        )
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: CircleAvatar(
                    radius: 13,
                    backgroundColor: AppColor.taWhiteFFFFFF,
                    child: Center(
                      child: SvgPicture.asset(
                        AppSvg.favoriteCurved,
                        width: 14.3,
                        color: AppColor.taPinkE8536D,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: -10,
                  bottom: 13,
                  child: Container(
                    width: 116,
                    height: 22,
                    color: AppColor.taRedFF3333,
                    child: Center(
                      child: Text(
                        "Pro Agency 10% OFF",
                        style: AppTextStyle.semiBold10.copyWith(
                          color: AppColor.taWhiteFFFFFF,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Manali- 5N/6 Days",
                style: AppTextStyle.semiBold16,
              ),
              const Expanded(child: SizedBox()),
              Text(
                "20,000",
                style: AppTextStyle.semiBold16,
              ),
              SvgPicture.asset(AppSvg.indianRupee)
            ],
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Manali - Kasol- Simla",
                    style: AppTextStyle.regular10.copyWith(
                      color: AppColor.taBlue323C43,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      SvgPicture.asset(
                        AppSvg.bed,
                        width: 12,
                        height: 12,
                      ),
                      const SizedBox(width: 10),
                      SvgPicture.asset(
                        AppSvg.camera,
                        width: 12,
                        height: 12,
                      ),
                      const SizedBox(width: 10),
                      SvgPicture.asset(
                        AppSvg.food,
                        width: 12,
                        height: 12,
                      ),
                      const SizedBox(width: 10),
                      SvgPicture.asset(
                        AppSvg.customerSupport,
                        width: 12,
                        height: 12,
                      ),
                      const SizedBox(width: 10),
                    ],
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Available Seat           6/10",
                    style: AppTextStyle.medium8,
                  ),
                  const SizedBox(height: 4),
                  SizedBox(
                    height: 6,
                    width: 109,
                    child: Stack(
                      children: [
                        Container(
                          width: 100,
                          decoration: BoxDecoration(
                            color: AppColor.taWhiteFDEEF0,
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        Container(
                          width: 80,
                          decoration: BoxDecoration(
                            color: AppColor.taPinkE8536D,
                            borderRadius: BorderRadius.circular(100),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 8, bottom: 16),
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: AppColor.taWhiteFDEEF0,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Barkat Agency",
                      style: AppTextStyle.semiBold14.copyWith(
                        color: AppColor.taBlack191919,
                      ),
                    ),
                    Image.asset(AppImg.verified, width: 55, height: 20),
                  ],
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      AppSvg.locationCurved,
                      width: 12,
                      height: 12,
                    ),
                    const SizedBox(width: 2),
                    Text(
                      "Chattogram, Bangladesh",
                      style: AppTextStyle.regular10.copyWith(
                        color: AppColor.taBlue323C43,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    for (int i = 0; i < 5; i++)
                      SvgPicture.asset(
                        AppSvg.star,
                        width: 10.8,
                        height: 10.8,
                        color: i == 4
                            ? AppColor.taGrey9CA2A7
                            : AppColor.taYellowFFBD00,
                      ),
                    const SizedBox(width: 3.6),
                    Text(
                      "(1.4K Review)",
                      style: AppTextStyle.regular10.copyWith(
                        color: AppColor.taBlack1E2428,
                      ),
                    ),
                    const Expanded(child: SizedBox()),
                    SvgPicture.asset(
                      AppSvg.view,
                      width: 12,
                      height: 12,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      "24",
                      style: AppTextStyle.regular10.copyWith(
                        color: AppColor.taBlue323C43,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            // margin: const EdgeInsets.only(top: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButtonWidget(
                  onTap: () => {},
                  size: const Size(130, 37),
                  title: 'View Details',
                  borderRadius: 100,
                  style: AppTextStyle.bold14
                      .copyWith(color: AppColor.taWhiteFFFFFF),
                ),
                TextButtonWidget(
                  borderColor: AppColor.taBlue323C43,
                  onTap: () => {},
                  size: const Size(130, 37),
                  borderRadius: 100,
                  title: 'Book Now',
                  color: AppColor.taWhiteFFFFFF,
                  style: AppTextStyle.bold14.copyWith(
                    color: AppColor.taBlue323C43,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
