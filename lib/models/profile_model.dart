import 'package:travel_app_test/views/holiday_view/widgets/post_list.dart';

class ProfileModel {
  final String fullname;
  final String username;
  final String email;
  final String address;
  final String settings;
  final String faq;
  final String logout;
  final String profilePicture;
  final String bio;
  final int followers;
  final int following;
  final List<Post> posts;

  ProfileModel(
      {required this.fullname,
      required this.username,
      required this.email,
      required this.address,
      required this.settings,
      required this.faq,
      required this.logout,
      required this.profilePicture,
      required this.bio,
      required this.followers,
      required this.following,
      required this.posts});
}

class Post {
  // final String username;
  // final String profilePicture; //نضيفهم في الفيو؟
  final String textarea;
  final String likes;

  Post({
    // required this.username,
    // required this.profilePicture,
    required this.textarea,
    required this.likes,
  });
}
