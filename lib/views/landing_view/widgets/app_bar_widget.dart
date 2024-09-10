import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants/app_color.dart';
import '../../../constants/app_svg.dart';
import '../../../constants/app_text_style.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    super.key,
  });
  @override
  Size get preferredSize => const Size.fromHeight(30);
  @override
  Widget build(BuildContext context) {
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
            'Hyderabad, India',
            style:
                AppTextStyle.regular16.copyWith(color: AppColor.taBlack1F1F1F),
          ),
          SvgPicture.asset(AppSvg.arrowDown, height: 16, width: 16),
        ],
      ),
      actions: [
        InkWell(
          onTap: () => debugPrint("notification button pressed"),
          child: SvgPicture.asset(AppSvg.notification, height: 20, width: 19),
        ),
        const SizedBox(width: 10.5),
        InkWell(
          onTap: () => debugPrint("share button pressed"),
          child: SvgPicture.asset(AppSvg.share, height: 19, width: 19),
        ),
        const SizedBox(width: 16),
      ],
    );
  }
}
