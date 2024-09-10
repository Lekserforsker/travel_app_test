import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_app_test/constants/app_color.dart';
import 'package:travel_app_test/constants/app_img.dart';
import 'package:travel_app_test/constants/app_svg.dart';
import 'package:travel_app_test/constants/app_text_style.dart';
import 'package:travel_app_test/widgets/text_button_widget.dart';

class PostList extends StatelessWidget {
  const PostList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) => Container(
        height: 358,
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(AppImg.profileImage),
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Courtney346",
                      style: AppTextStyle.semiBold14.copyWith(
                        color: AppColor.taBlack212B36,
                      ),
                    ),
                    Text(
                      "Suggested for you",
                      style: AppTextStyle.regular10.copyWith(
                        color: AppColor.taGrey747474,
                      ),
                    ),
                  ],
                ),
                const Expanded(child: SizedBox()),
                TextButtonWidget(
                  onTap: () => debugPrint("See More button pressed"),
                  size: const Size(64, 28),
                  borderRadius: 8,
                  title: 'Follow',
                ),
                SizedBox(width: 2),
                SvgPicture.asset(
                  AppSvg.more,
                  height: 24,
                  width: 24,
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              "Travel can be done by foot, bicycle, automobile, train, boat, bus, airplane, ship or other means, with or without luggage, ",
              style: AppTextStyle.regular12.copyWith(
                color: AppColor.taGrey454545,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              height: 205,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    AppImg.bgImg4,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                SvgPicture.asset(AppSvg.favorite, height: 24, width: 24),
                const SizedBox(width: 17),
                SvgPicture.asset(AppSvg.comment, height: 24, width: 24),
                const SizedBox(width: 17),
                SvgPicture.asset(AppSvg.share, height: 24, width: 24),
                const Expanded(child: SizedBox()),
                SvgPicture.asset(AppSvg.bookmark, height: 24, width: 24),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                SvgPicture.asset(AppSvg.favorite, height: 15, width: 15),
                const SizedBox(width: 4),
                Text(
                  "480 likes",
                  style: AppTextStyle.regular10.copyWith(
                    color: AppColor.taGrey747474,
                  ),
                )
              ],
            )
          ],
        ),
      ),
      separatorBuilder: (context, index) => const SizedBox(height: 32),
      itemCount: 5,
    );
  }
}