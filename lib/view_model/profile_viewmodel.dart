import 'package:flutter/material.dart';

import '../constants/app_img.dart';
import '../models/profile_model.dart';

class ProfileViewmodel extends ChangeNotifier {
  // This will provide all data the view needs
  final ProfileModel _profile = ProfileModel(
    fullname: 'Muhammad Wilan Rawi',
    username: 'wilrian1o3',
    email: "wilanrawi@gmail.com",
    address:
        "1234 Al-Madina Street, Al-Jubail, Jubail City, Eastern Province 12345, Saudi Arabia",
    settings: 'Settings',
    faq: 'FAQ',
    logout: 'Log Out',
    profilePicture: AppImg.profilePicture,
    bio:
        'Travel enthusiast sharing reviews and tips from around the world. Discover new places, cultures, and unforgettable experiences!',
    followers: 1500,
    following: 300,
    posts: [
      Post(
          textarea:
              "Travel can be done by foot, bicycle, automobile, train, boat, bus, airplane, ship or other means, with or without luggage, ",
          likes: '480 likes'),
      Post(
          textarea: "An exciting journey through the snowy peaks of the Alps.",
          likes: '100 likes')
    ],
  );

  // Getter to provide read-only access to the private `_profile` instance
  ProfileModel get profile => _profile;

  // Method for Profile Tab
  List<Map<String, String>> getProfileDetails() {
    return [
      {'label': 'Fullname', 'value': _profile.fullname},
      {'label': 'User  Name', 'value': '@${_profile.username}'},
      {'label': 'Email', 'value': _profile.email},
      {'label': 'Address', 'value': _profile.address},
      {'label': 'Settings', 'value': _profile.settings},
      {'label': 'Log Out', 'value': _profile.logout},
    ];
  }

  // Method for Post Tab
  List<Widget> getPostList() {
    return _profile.posts.map((post) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              post.textarea,
              style: const TextStyle(fontSize: 16, color: Colors.black87),
            ),
            const SizedBox(height: 4),
            Text(
              post.likes,
              style: const TextStyle(color: Colors.grey),
            ),
          ],
        ),
      );
    }).toList();
  }

  // Method for Booking Tab
  List<Widget> getBookingList() {
    return [
      const Center(child: Text('Booking list')),
      // You can add more widgets to this list as needed
    ];
  }
}
