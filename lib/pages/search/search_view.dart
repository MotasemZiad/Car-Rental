import 'package:car_rental/pages/search/widgets/recent_search.dart';
import 'package:car_rental/pages/search/widgets/search_app_bar.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            SearchAppBar(),
            Expanded(child: RecentSearch()),
          ],
        ),
      ),
    );
  }
}
