import 'package:flutter/material.dart';
import 'package:intrazeromovies/core/utils/assets.dart';

class AppBarLogo extends StatelessWidget {
  const AppBarLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Asset.kLogo,
      scale: 1.5,
    );
  }
}
