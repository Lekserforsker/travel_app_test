import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:travel_app_test/constants/app_color.dart';
import 'package:travel_app_test/constants/app_text_style.dart';
import 'package:travel_app_test/view_model/landing_viewmodel.dart';
import 'package:travel_app_test/views/home_view/home_view.dart';
import 'package:travel_app_test/views/landing_view/widgets/app_bar_widget.dart';
import 'package:travel_app_test/views/landing_view/widgets/post_popup.dart';
import 'package:travel_app_test/views/share_view/widgets/share_view.dart';
import 'package:travel_app_test/widgets/text_button_widget.dart';
import '../../constants/app_svg.dart';

class LandingView extends StatefulWidget {
  const LandingView({super.key});

  @override
  State<LandingView> createState() => _LandingViewState();
}

class _LandingViewState extends State<LandingView> {
  int activeIndex = 0;
  //create incinstance from ViewModel
  //var data = LandingViewmodel();

  void setActiveIndex(index) => setState(() => activeIndex = index);
  // final List<({String title, String path})> categories = [
  //   (title: "Home", path: AppSvg.home),
  //   (title: "Share", path: AppSvg.wifi),
  //   (title: "Promotion", path: AppSvg.discountTag),
  //   (title: "Profile", path: AppSvg.userCircle),
  // ];

  final pages = [
    const HomeView(),
    const ShareView(), // This is for the Share
    Container(), // This is for the Promotion
    Container(), // This is for the Profile
  ];

  bool animate = true;

  void toggleAnimation() => setState(() => animate = !animate);

  @override
  Widget build(BuildContext context) {
    return Consumer<LandingViewmodel>(
      builder: (context, landingViewmodel, child) {
        return Scaffold(
          appBar: AppBarWidget(
            showBackButton: activeIndex != 1, // Hide back button for ShareView
          ),
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
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          body: SafeArea(
            child: Stack(
              children: [
                pages[activeIndex],
                PostPopup(animate: animate),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    color: AppColor.taWhiteFFFFFF,
                    height: 66,
                    width: MediaQuery.sizeOf(context).width,
                    child: Row(
                      children: [
                        for (final (index, obj)
                            in landingViewmodel.categories.indexed) ...[
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
      },
    );
  }
}
