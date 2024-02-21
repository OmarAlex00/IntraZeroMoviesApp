import 'package:flutter/material.dart';

class GenresRow extends StatelessWidget {
  const GenresRow({
    super.key,
    required this.genres,
  });

  final List genres;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: genres
            .map((e) => Container(
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  padding: const EdgeInsets.all(10),
                  child: Text('$e'),
                ))
            .toList(),
      ),
    );
  }
}
