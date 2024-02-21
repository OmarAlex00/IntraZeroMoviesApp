import 'package:flutter/material.dart';

class SearchNoResults extends StatelessWidget {
  const SearchNoResults({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.only(bottom: 15, left: 10, right: 48),
        child: Text('no results'));
  }
}
