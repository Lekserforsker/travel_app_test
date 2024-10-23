import 'package:flutter/material.dart';

import '../../../constants/app_img.dart';

class HolidayViewmodel extends ChangeNotifier {
  //this will be provide all data the view needs
  List title = ['The Holiday', 'Follow'];
  String username = 'Courtney346'; //or ""
  String suggest = 'Suggested for you';
  String textarea =
      "Travel can be done by foot, bicycle, automobile, train, boat, bus, airplane, ship or other means, with or without luggage, ";
  String likes = '480 likes';
  String story = "Post Story";

  final List<({String title, String path})> categories = [
    (title: "Jhonson", path: AppImg.bgImg1),
    (title: "Michal", path: AppImg.bgImg2),
    (title: "Adrian", path: AppImg.bgImg3),
    (title: "Jhonson", path: AppImg.bgImg1),
    (title: "Michal", path: AppImg.bgImg2),
    (title: "Adrian", path: AppImg.bgImg3),
  ];

  // Fucntion => getUserDetails()
  // Fucntion => getCategories()
}
