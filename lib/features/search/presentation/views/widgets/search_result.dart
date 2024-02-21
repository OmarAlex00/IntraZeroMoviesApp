import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Text(
        'Search Results',
        style: Styles.homeTitleMedium,
      ),
    );
  }
}
