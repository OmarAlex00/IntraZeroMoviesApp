import 'package:flutter/widgets.dart';
import 'package:intrazeromovies/core/utils/styles.dart';

class ErrorText extends StatelessWidget {
  const ErrorText({super.key, required this.errMsg});
  final String errMsg;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errMsg,
        style: Styles.homeTitleMedium,
        textAlign: TextAlign.center,
      ),
    );
  }
}
