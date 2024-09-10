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
  Size get preferredSize => const Size.fromHeight(40);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: AppColor.taWhiteFFFFFF,
      foregroundColor: AppColor.taWhiteFFFFFF,
      backgroundColor: AppColor.taWhiteFFFFFF,
      toolbarHeight: 40,
      titleSpacing: 16,
      centerTitle: true,
      leadingWidth: 32 + 16,
      leading: InkWell(
        onTap: () => Navigator.pop(context),
        child: Align(
            alignment: Alignment.centerRight,
            child: SvgPicture.asset(AppSvg.back)),
      ),
      title: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'The Holiday',
            style: AppTextStyle.bold24.copyWith(color: AppColor.taBlack191919),
          ),
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
          child: SvgPicture.asset(AppSvg.sent, height: 19, width: 19),
        ),
        const SizedBox(width: 16),
      ],
    );
  }
}
