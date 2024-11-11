import 'package:flutter/material.dart';

import '../constants/app_img.dart';
import '../models/profile_model.dart';

class ProfileViewmodel extends ChangeNotifier {
  //this will be provide all data the view needs
  final ProfileModel _profile = ProfileModel(
      fullname: 'Muhammad Wilan Rawi',
      username: 'wilrian1o3',
      email: "wilanrawi@gmail.com",
      address: "2722 Camden Ave Austin, Idaho 78097 United States",
      settings: 'Settings',
      faq: 'FAQ',
      logout: 'Log Out',
      profilePicture: AppImg.profilePicture);

  // Getter to provide read-only access to the private `_profile` instance
  ProfileModel get profile => _profile;
}
