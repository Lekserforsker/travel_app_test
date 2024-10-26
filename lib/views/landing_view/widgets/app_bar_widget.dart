import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:travel_app_test/view_model/landing_viewmodel.dart';
import '../../../constants/app_color.dart';
import '../../../constants/app_svg.dart';
import '../../../constants/app_text_style.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  AppBarWidget({
    super.key,
  });
  @override
  Size get preferredSize => const Size.fromHeight(30);
  //create incinstance from ViewModel
  //var data = LandingViewmodel();
  @override
  Widget build(BuildContext context) {
    return Consumer<LandingViewmodel>(
      builder: (context, landingViewmodel, child) {
        return AppBar(
          surfaceTintColor: AppColor.taWhiteFFFFFF,
          foregroundColor: AppColor.taWhiteFFFFFF,
          backgroundColor: AppColor.taWhiteFFFFFF,
          toolbarHeight: 24,
          titleSpacing: 4,
          centerTitle: true,
          leadingWidth: 30 + 16,
          leading: Align(
              alignment: Alignment.centerRight,
              child: SvgPicture.asset(AppSvg.locationCurved)),
          title: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                landingViewmodel.currentlocation,
                style: AppTextStyle.regular16
                    .copyWith(color: AppColor.taBlack1F1F1F),
              ),
              SvgPicture.asset(AppSvg.arrowDown, height: 16, width: 16),
            ],
          ),
          actions: [
            InkWell(
              onTap: () => debugPrint("notification button pressed"),
              child:
                  SvgPicture.asset(AppSvg.notification, height: 20, width: 19),
            ),
            const SizedBox(width: 10.5),
            InkWell(
              onTap: () => debugPrint("share button pressed"),
              child: SvgPicture.asset(AppSvg.sent, height: 19, width: 19),
            ),
            const SizedBox(width: 16),
          ],
        );
      },
    );
    // return AppBar(
    //   surfaceTintColor: AppColor.taWhiteFFFFFF,
    //   foregroundColor: AppColor.taWhiteFFFFFF,
    //   backgroundColor: AppColor.taWhiteFFFFFF,
    //   toolbarHeight: 24,
    //   titleSpacing: 4,
    //   centerTitle: true,
    //   leadingWidth: 30 + 16,
    //   leading: Align(
    //       alignment: Alignment.centerRight,
    //       child: SvgPicture.asset(AppSvg.locationCurved)),
    //   title: Row(
    //     mainAxisSize: MainAxisSize.max,
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     mainAxisAlignment: MainAxisAlignment.start,
    //     children: [
    //       Text(
    //         data.currentlocation,
    //         style:
    //             AppTextStyle.regular16.copyWith(color: AppColor.taBlack1F1F1F),
    //       ),
    //       SvgPicture.asset(AppSvg.arrowDown, height: 16, width: 16),
    //     ],
    //   ),
    //   actions: [
    //     InkWell(
    //       onTap: () => debugPrint("notification button pressed"),
    //       child: SvgPicture.asset(AppSvg.notification, height: 20, width: 19),
    //     ),
    //     const SizedBox(width: 10.5),
    //     InkWell(
    //       onTap: () => debugPrint("share button pressed"),
    //       child: SvgPicture.asset(AppSvg.sent, height: 19, width: 19),
    //     ),
    //     const SizedBox(width: 16),
    //   ],
    // );
  }
}
