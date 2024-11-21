import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app_test/view_model/profile_viewmodel.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ProfileViewmodel>(
      builder: (context, profileViewmodel, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Profile'),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
            ],
          ),
          body: Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  // Personal profile Picture
                  CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        NetworkImage(profileViewmodel.profile.profilePicture),
                  ),
                  const SizedBox(height: 16),
                  // Full name display
                  Text(
                    profileViewmodel.profile.fullname,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  // Username display
                  Text(
                    '@${profileViewmodel.profile.username}',
                    style: const TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  const SizedBox(height: 16),
                  // Bio display
                  Text(
                    profileViewmodel.profile.bio,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 14, color: Colors.black87),
                  ),
                  const SizedBox(height: 16),
                  // Followers & Following display
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            '${profileViewmodel.profile.followers}',
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            'Followers',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '${profileViewmodel.profile.following}',
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            'Following',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  // Edit Profile Info Button
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.edit),
                    label: const Text('Edit Profile Info'),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Top navigation bar for Profile, Posts, and Bookings tabs
                  DefaultTabController(
                    length: 3,
                    child: Column(
                      children: [
                        TabBar(
                          labelColor: Colors.grey,
                          unselectedLabelColor:
                              const Color.fromARGB(255, 221, 45, 103),
                          indicatorColor: Colors.pink[200],
                          tabs: [
                            const Tab(text: 'Profile'),
                            Tab(
                              text:
                                  'Posts (${profileViewmodel.profile.posts.length})',
                            ),
                            const Tab(text: 'Booking'),
                          ],
                        ),

                        // Wrap TabBarView with a Container with a fixed height
                        Container(
                          height: 500, // Set a fixed height for the TabBarView
                          child: TabBarView(
                            children: [
                              // Profile Tab
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: profileViewmodel
                                      .getProfileDetails()
                                      .map((detail) {
                                    return Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 16.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            detail['label']!,
                                            style: const TextStyle(
                                                fontSize: 14,
                                                color: Colors.grey),
                                          ),
                                          Text(
                                            detail['value']!,
                                            style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black),
                                          ),
                                        ],
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ),

                              // Posts Tab
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: profileViewmodel.getPostList(),
                                ),
                              ),
                              // Booking Tab
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: profileViewmodel.getBookingList(),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
