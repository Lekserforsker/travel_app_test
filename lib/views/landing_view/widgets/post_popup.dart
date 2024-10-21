import 'package:flutter/material.dart';
import 'package:travel_app_test/constants/app_color.dart';
import 'package:travel_app_test/constants/app_text_style.dart';
import 'package:travel_app_test/view_model/landing_viewmodel.dart';
import 'package:travel_app_test/widgets/text_button_widget.dart';

class PostPopup extends StatelessWidget {
  PostPopup({super.key, required this.animate});

  final bool animate;
  //create incinstance from ViewModel
  var data = LandingViewmodel();
  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 150),
      bottom: animate ? 100 : 0,
      left: MediaQuery.sizeOf(context).width * .08,
      right: MediaQuery.sizeOf(context).width * .08,
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
                    data.upload,
                    style: AppTextStyle.bold16.copyWith(
                      color: AppColor.taBlack1F1F1F,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    data.plusicon,
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
                        title: data.regular_post,
                      ),
                      TextButtonWidget(
                        onTap: () => {},
                        size: const Size(140, 35),
                        borderColor: AppColor.taPinkE8536D,
                        color: AppColor.taWhiteFFFFFF,
                        style: AppTextStyle.medium14
                            .copyWith(color: AppColor.taPinkE8536D),
                        borderRadius: 100,
                        title: data.partner_post,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
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
