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
      surfaceTintColor: AppColor.taWhiteFFF3F3F3,
      foregroundColor: AppColor.taWhiteFFF3F3F3,
      backgroundColor: AppColor.taWhiteFFF3F3F3,
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
            'Search Results',
            style: AppTextStyle.bold24.copyWith(color: AppColor.taBlack191919),
          ),
        ],
      ),
    );
  }
}
