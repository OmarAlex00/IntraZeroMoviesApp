import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intrazeromovies/core/utils/app_router.dart';
import 'package:intrazeromovies/core/utils/constants.dart';

void main() {
  runApp(const IntraZeroMovies());
}

class IntraZeroMovies extends StatelessWidget {
  const IntraZeroMovies({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: ConstantVars.kPrimaryColor,
          textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme)),
      routerConfig: AppRouter.router,
    );
  }
}
