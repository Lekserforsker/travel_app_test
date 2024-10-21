import 'package:flutter/material.dart';
import 'package:travel_app_test/views/home_view/widgets/category_list.dart';
import 'package:travel_app_test/views/home_view/widgets/destination_list.dart';
import 'package:travel_app_test/views/home_view/widgets/explore_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const ExploreCard(),
            const CategoryList(),
            DestinationList(),
            const SizedBox(height: 100)
          ],
        ),
      ),
    );
  }
}
