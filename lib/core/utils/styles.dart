import 'package:flutter/material.dart';
import 'package:intrazeromovies/core/utils/constants.dart';

abstract class Styles {
  static const homeTitleMedium =
      TextStyle(fontSize: 18, fontWeight: FontWeight.w600, letterSpacing: 0);
  static const movieTitle = TextStyle(
      fontSize: 20,
      fontFamily: ConstantVars.kSectraFont,
      fontWeight: FontWeight.w500);
  static final movieOverView = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.italic,
      color: Colors.white.withOpacity(0.5));
  static const movieDate = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w900,
  );
  static const movieVoteRate = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static final movieVoteCount = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Colors.white.withOpacity(0.3));
  static const movieDetailsTitle = TextStyle(
      fontSize: 26,
      fontFamily: ConstantVars.kSectraFont,
      fontWeight: FontWeight.w500);
  static final movieDetailsOverview = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.italic,
      color: Colors.white.withOpacity(0.5));
}
