import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app_test/constants/routes.dart';
import 'package:travel_app_test/view_model/holiday_viewmodel.dart';

import '../../../constants/app_color.dart';
import '../../../constants/app_img.dart';
import '../../../constants/app_svg.dart';
import '../../../constants/app_text_style.dart';

class StoryList extends StatelessWidget {
  StoryList({super.key});

  /* final List<({String title, String path})> categories = [
    (title: "Jhonson", path: AppImg.bgImg1),
    (title: "Michal", path: AppImg.bgImg2),
    (title: "Adrian", path: AppImg.bgImg3),
    (title: "Jhonson", path: AppImg.bgImg1),
    (title: "Michal", path: AppImg.bgImg2),
    (title: "Adrian", path: AppImg.bgImg3),
  ]; */
  //create incinstance from ViewModel
  var data = HolidayViewmodel();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 129,
      child: ListView.separated(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => index == 0
            ? InkWell(
                onTap: () => Navigator.pushNamed(context, searchResults),
                child: Column(
                  children: [
                    Container(
                      height: 105,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: AppColor.taGreyC8C8C8,
                          strokeAlign: BorderSide.strokeAlignInside,
                        ),
                      ),
                      child: Center(
                        child: CircleAvatar(
                          radius: 17,
                          backgroundColor: AppColor.taPinkE8536D,
                          child: SvgPicture.asset(
                            AppSvg.plusThick,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      data.story,
                      style: AppTextStyle.medium12.copyWith(
                        color: AppColor.taBlack1F1F1F,
                      ),
                    )
                  ],
                ),
              )
            : Column(
                children: [
                  Container(
                    height: 105,
                    width: 80,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          data.categories[index - 1].path,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    data.categories[index - 1].title,
                    style: AppTextStyle.medium12.copyWith(
                      color: AppColor.taBlack1F1F1F,
                    ),
                  )
                ],
              ),
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemCount: data.categories.length + 1,
      ),
    );
  }
}
