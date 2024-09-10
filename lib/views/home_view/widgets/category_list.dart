import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app_test/constants/app_svg.dart';
import '../../../constants/app_color.dart';
import '../../../constants/app_text_style.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int activeIndex = 1;

  void setActiveIndex(index) => setState(() => activeIndex = index);
  final List<({String title, String path})> categories = [
    (title: "Holidays", path: AppSvg.tree),
    (title: "Rental", path: AppSvg.keys),
    (title: "Travel Partner", path: AppSvg.travel),
    (title: "Hotels", path: AppSvg.hotel),
    (title: "Holidays", path: AppSvg.tree),
    (title: "Hotels", path: AppSvg.hotel),
    (title: "Travel Partner", path: AppSvg.travel),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Categories",
          style: AppTextStyle.semiBold18.copyWith(
            color: AppColor.taBlack1F1F1F,
          ),
        ),
        Container(
          height: 88,
          margin: const EdgeInsets.only(top: 14),
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(width: 12),
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            clipBehavior: Clip.none,
            // itemExtent: 74 + 16,
            itemBuilder: (context, index) => InkWell(
              onTap: () => setActiveIndex(index),
              child: Container(
                width: 74,
                padding: EdgeInsets.zero,
                clipBehavior: Clip.none,
                // margin: const EdgeInsets.only(right: 12),
                decoration: BoxDecoration(
                  color: index == activeIndex
                      ? AppColor.taPinkE8536D
                      : AppColor.taWhiteFFFFFF,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    if (activeIndex == index)
                      BoxShadow(
                        blurRadius: 10,
                        offset: const Offset(0, 8),
                        color: AppColor.taPinkE8536D.withOpacity(.25),
                      )
                  ],
                  border: Border.all(
                    strokeAlign: BorderSide.strokeAlignInside,
                    color: index == activeIndex
                        ? AppColor.taWhiteFFE9F4FF
                        : AppColor.taWhiteFFF0F0F0,
                    width: 1,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      categories[index].path,
                      color: index == activeIndex
                          ? AppColor.taWhiteFFFFFF
                          : AppColor.taBlack191919,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      categories[index].title.toString(),
                      textAlign: TextAlign.center,
                      style: AppTextStyle.medium10.copyWith(
                        color: index == activeIndex
                            ? AppColor.taWhiteFFFFFF
                            : AppColor.taBlack1F1F1F,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}