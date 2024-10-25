import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app_test/constants/app_img.dart';
import 'package:travel_app_test/view_model/home_viewmodel.dart';
import '../../../constants/app_color.dart';
import '../../../constants/app_svg.dart';
import '../../../constants/app_text_style.dart';
import '../../../widgets/text_button_widget.dart';
import 'dart:math' as math;
import 'package:provider/provider.dart';

class DestinationList extends StatelessWidget {
  DestinationList({super.key});

  // in real implementation this could be handled with box type
  // bool isBigBox(i) => i == 0 || i == 3 || i == 6 ? true : false;
  //create incinstance from ViewModel
  //var data = HomeViewmodel();
  @override
  Widget build(BuildContext context) {
    return Consumer<HomeViewmodel>(
      builder: (context, homeViewmodel, child) {
        return Column(
          children: [
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  homeViewmodel.destination,
                  style: AppTextStyle.semiBold16.copyWith(
                    color: AppColor.taBlack1F1F1F,
                  ),
                ),
                TextButtonWidget(
                  onTap: () => debugPrint("See More button pressed"),
                  size: const Size(78, 28),
                  borderRadius: 8,
                  title: homeViewmodel.title,
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
                    padding: homeViewmodel.isBigBox(i)
                        ? const EdgeInsets.all(15)
                        : const EdgeInsets.all(5),
                    width: homeViewmodel.isBigBox(i)
                        ? MediaQuery.sizeOf(context).width
                        : MediaQuery.sizeOf(context).width * .44,
                    height: 160,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          homeViewmodel.isBigBox(i)
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
                          alignment: homeViewmodel.isBigBox(i)
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
                                homeViewmodel.location,
                                style: AppTextStyle.medium20.copyWith(
                                  color: AppColor.taWhiteFFFFFF,
                                ),
                              ),
                            ],
                          ),
                        ),
                        CircleAvatar(
                          radius: 12,
                          backgroundColor:
                              AppColor.taGrey6E6E6E.withOpacity(.46),
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
      },
    );
    // return Column(
    //   children: [
    //     const SizedBox(height: 32),
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: [
    //         Text(
    //           data.destination,
    //           style: AppTextStyle.semiBold16.copyWith(
    //             color: AppColor.taBlack1F1F1F,
    //           ),
    //         ),
    //         TextButtonWidget(
    //           onTap: () => debugPrint("See More button pressed"),
    //           size: const Size(78, 28),
    //           borderRadius: 8,
    //           title: data.title,
    //         ),
    //       ],
    //     ),
    //     const SizedBox(height: 16),
    //     Wrap(
    //       spacing: 16,
    //       runSpacing: 16,
    //       direction: Axis.horizontal,
    //       children: [
    //         for (int i = 0; i < 7; i++)
    //           Container(
    //             padding: data.isBigBox(i)
    //                 ? const EdgeInsets.all(15)
    //                 : const EdgeInsets.all(5),
    //             width: data.isBigBox(i)
    //                 ? MediaQuery.sizeOf(context).width
    //                 : MediaQuery.sizeOf(context).width * .44,
    //             height: 160,
    //             decoration: BoxDecoration(
    //               image: DecorationImage(
    //                 fit: BoxFit.fill,
    //                 image: AssetImage(
    //                   data.isBigBox(i)
    //                       ? AppImg.bgImg8
    //                       : [
    //                           AppImg.bgImg7,
    //                           AppImg.bgImg6,
    //                           AppImg.bgImg7
    //                         ][math.Random().nextInt(2)],
    //                 ),
    //               ),
    //               borderRadius: BorderRadius.circular(10),
    //             ),
    //             child: Row(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               children: [
    //                 Align(
    //                   alignment: data.isBigBox(i)
    //                       ? Alignment.topLeft
    //                       : Alignment.bottomLeft,
    //                   child: Row(
    //                     crossAxisAlignment: CrossAxisAlignment.center,
    //                     children: [
    //                       SvgPicture.asset(
    //                         AppSvg.locationCurved,
    //                         height: 20,
    //                         width: 20,
    //                         color: AppColor.taWhiteFFFFFF,
    //                       ),
    //                       const SizedBox(width: 4),
    //                       Text(
    //                         data.location,
    //                         style: AppTextStyle.medium20.copyWith(
    //                           color: AppColor.taWhiteFFFFFF,
    //                         ),
    //                       ),
    //                     ],
    //                   ),
    //                 ),
    //                 CircleAvatar(
    //                   radius: 12,
    //                   backgroundColor: AppColor.taGrey6E6E6E.withOpacity(.46),
    //                   child: Center(
    //                     child: SvgPicture.asset(
    //                       AppSvg.favoriteCurved,
    //                       color: AppColor.taWhiteFFFFFF,
    //                       height: 12,
    //                       width: 13.2,
    //                     ),
    //                   ),
    //                 )
    //               ],
    //             ),
    //           ),
    //       ],
    //     )
    //   ],
    // );
  }
}
