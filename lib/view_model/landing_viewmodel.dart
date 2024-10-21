import '../../constants/app_svg.dart';

class LandingViewmodel {
  //this will be provide all data the view needs
  String currentlocation = 'Hyderabad, India';
  String upload = "Upload New Post";
  String plusicon = "Click “+” Icon to create new post";
  String regular_post = 'Regular post';
  String partner_post = 'Partner post';
  int activeIndex = 0;

  final List<({String title, String path})> categories = [
    (title: "Home", path: AppSvg.home),
    (title: "Share", path: AppSvg.wifi),
    (title: "Promotion", path: AppSvg.discountTag),
    (title: "Profile", path: AppSvg.userCircle),
  ];
}
