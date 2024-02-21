import 'package:flutter/material.dart';
import 'package:intrazeromovies/core/widgets/app_bar_logo.dart';
import 'package:intrazeromovies/core/widgets/app_bar_search.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [AppBarLogo(), Spacer(), AppBarSearch()],
    );
  }
}
