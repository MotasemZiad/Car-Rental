import 'package:flutter/material.dart';

import './widgets/recent_search.dart';
import './widgets/search_app_bar.dart';

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
