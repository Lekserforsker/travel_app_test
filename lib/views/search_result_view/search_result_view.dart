import 'package:flutter/material.dart';
import 'package:travel_app_test/constants/app_color.dart';
import 'package:travel_app_test/views/search_result_view/widgets/app_bar_widget.dart';
import 'package:travel_app_test/views/search_result_view/widgets/search_result_card.dart';

class SearchResultView extends StatelessWidget {
  const SearchResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      backgroundColor: AppColor.taWhiteFFF3F3F3,
      body: ListView(
        children: [
          const SizedBox(height: 20),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => SearchResultCard(),
            separatorBuilder: (context, index) => const SizedBox(height: 32),
            itemCount: 20,
          )
        ],
      ),
    );
  }
}
