import 'package:flutter/material.dart';
import 'package:intrazeromovies/core/utils/constants.dart';

abstract class Styles {
  static const homeTitleMedium =
      TextStyle(fontSize: 18, fontWeight: FontWeight.w600, letterSpacing: 0);
  static const bestSellerBooksTitle = TextStyle(
      fontSize: 20,
      fontFamily: ConstantVars.kSectraFont,
      fontWeight: FontWeight.w500);
  static final bestSellerBooksAuthor = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.italic,
      color: Colors.white.withOpacity(0.5));
  static const booksPrice = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w900,
  );
  static const booksRateAndReview = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
  static final booksCount = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Colors.white.withOpacity(0.3));
  static const detailsBooksTitle = TextStyle(
      fontSize: 26,
      fontFamily: ConstantVars.kSectraFont,
      fontWeight: FontWeight.w500);
  static final detailsBooksAuthor = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      fontStyle: FontStyle.italic,
      color: Colors.white.withOpacity(0.5));
  static const youCanAlsoSee =
      TextStyle(fontSize: 14, fontWeight: FontWeight.w600);
}
