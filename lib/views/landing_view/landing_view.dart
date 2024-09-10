import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_app_test/constants/app_color.dart';
import 'package:travel_app_test/constants/app_text_style.dart';
import 'package:travel_app_test/views/home_view/home_view.dart';
import 'package:travel_app_test/views/landing_view/widgets/app_bar_widget.dart';
import 'package:travel_app_test/widgets/text_button_widget.dart';
import '../../constants/app_svg.dart';

class LandingView extends StatefulWidget {
  const LandingView({super.key});

  @override
  State<LandingView> createState() => _LandingViewState();
}

class _LandingViewState extends State<LandingView> {
  int activeIndex = 0;

  void setActiveIndex(index) => setState(() => activeIndex = index);
  final List<({String title, String path})> categories = [
    (title: "Home", path: AppSvg.home),
    (title: "Share", path: AppSvg.wifi),
    (title: "Promotion", path: AppSvg.discountTag),
    (title: "Profile", path: AppSvg.userCircle),
  ];

  final pages = [
    const HomeView(),
    Container(),
    Container(),
    Container(),
  ];

  bool animate = true;

  void toggleAnimation() => setState(() => animate = !animate);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      backgroundColor: AppColor.taWhiteFFFFFF,
      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: !animate
              ? null
              : Border.all(
                  width: 2,
                  color: AppColor.taWhiteFFFFFF,
                ),
          boxShadow: [
            BoxShadow(
                blurRadius: 15,
                offset: const Offset(0, 12),
                color: AppColor.taBlack000000.withOpacity(.15)),
          ],
        ),
        child: InkWell(
          onTap: () => toggleAnimation(),
          child: CircleAvatar(
            radius: 26,
            backgroundColor: AppColor.taPinkE8536D,
            child: Center(
              child: SvgPicture.asset(AppSvg.plus),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Stack(
          children: [
            pages[activeIndex],
            AnimatedPositioned(
              duration: const Duration(milliseconds: 150),
              bottom: animate ? 100 : 0,
              left: 50,
              right: 50,
              child: AnimatedScale(
                duration: const Duration(milliseconds: 150),
                scale: animate ? 1 : 0,
                child: Container(
                  width: 315,
                  height: 160,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          color: AppColor.taGrey7C7C7C.withOpacity(.25),
                          offset: const Offset(0, 5)),
                    ],
                  ),
                  child: ClipPath(
                    clipper: CenterClip(),
                    child: Container(
                      width: 315,
                      height: 160,
                      color: AppColor.taWhiteFFFFFF,
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Upload New Post",
                            style: AppTextStyle.bold16.copyWith(
                              color: AppColor.taBlack1F1F1F,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            "Click “+” Icon to create new post",
                            style: AppTextStyle.medium14.copyWith(
                              color: AppColor.taGrey7C7C7C,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButtonWidget(
                                onTap: () => {},
                                size: const Size(140, 35),
                                borderRadius: 100,
                                style: AppTextStyle.semiBold14
                                    .copyWith(color: AppColor.taWhiteFFFFFF),
                                title: 'Regular post',
                              ),
                              TextButtonWidget(
                                onTap: () => {},
                                size: const Size(140, 35),
                                borderColor: AppColor.taPinkE8536D,
                                color: AppColor.taWhiteFFFFFF,
                                style: AppTextStyle.medium14
                                    .copyWith(color: AppColor.taPinkE8536D),
                                borderRadius: 100,
                                title: 'Partner post',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: AppColor.taWhiteFFFFFF,
                height: 66,
                width: MediaQuery.sizeOf(context).width,
                child: Row(
                  children: [
                    for (final (index, obj) in categories.indexed) ...[
                      if (index == 2) const Expanded(child: SizedBox()),
                      Expanded(
                        child: InkWell(
                          onTap: () => setActiveIndex(index),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                obj.path,
                                color: activeIndex == index
                                    ? AppColor.taBlack1F1F1F
                                    : AppColor.taGrey7C7C7C,
                              ),
                              const SizedBox(height: 8),
                              Text(
                                obj.title,
                                style: AppTextStyle.semiBold12.copyWith(
                                  color: activeIndex == index
                                      ? AppColor.taBlack1F1F1F
                                      : AppColor.taGrey7C7C7C,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CenterClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(15, 0);
    path.lineTo(size.width - 15, 0);

    path.quadraticBezierTo(
      size.width,
      0,
      size.width,
      15,
    );

    path.lineTo(size.width, size.height - 15 - 12);

    path.quadraticBezierTo(
      size.width,
      size.height - 12,
      size.width - 15,
      size.height - 12,
    );

    path.lineTo(size.width / 2 + 12, size.height - 12);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width / 2 - 12, size.height - 12);

    path.lineTo(15, size.height - 12);

    path.quadraticBezierTo(
      0,
      size.height - 12,
      0,
      size.height - 12 - 15,
    );
    path.lineTo(0, 15);

    path.quadraticBezierTo(
      0,
      0,
      15,
      0,
    );

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
