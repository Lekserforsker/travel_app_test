import 'package:flutter/material.dart';
import 'package:travel_app_test/constants/app_svg.dart';

class HomeViewmodel extends ChangeNotifier {
  //this will be provide all data the view needs
  String categorie = "Categories";
  String destination = "What Destination do you\nlike to go to?";
  String title = 'See More';
  String location = 'Dubai';
  // in real implementation this could be handled with box type
  bool isBigBox(i) => i == 0 || i == 3 || i == 6 ? true : false;

  final List<({String title, String path})> categories = [
    (title: "Holidays", path: AppSvg.tree),
    (title: "Rental", path: AppSvg.keys),
    (title: "Travel Partner", path: AppSvg.travel),
    (title: "Hotels", path: AppSvg.hotel),
    (title: "Holidays", path: AppSvg.tree),
    (title: "Hotels", path: AppSvg.hotel),
    (title: "Travel Partner", path: AppSvg.travel),
  ];

  //Notify Listeners Whenever I modify the state in any of my ViewModels
  //create func to get data from model
}
