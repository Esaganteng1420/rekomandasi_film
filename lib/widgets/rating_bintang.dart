
import 'package:flutter/material.dart';

class RatingBintang extends StatelessWidget {
  final double rating;

  const RatingBintang({
    super.key,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    double nilaiBintang = rating / 2;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ...List.generate(5, (index) {
          IconData ikon;

          if (nilaiBintang >= index + 1) {
            ikon = Icons.star;
          } else if (nilaiBintang >= index + 0.5) {
            ikon = Icons.star_half;
          } else {
            ikon = Icons.star_border;
          }

          return Icon(
            ikon,
            color: const Color(0xFFF59E0B),
            size: 19,
          );
        }),

        const SizedBox(width: 6),

        Text(
          '${rating.toStringAsFixed(1)}/10',
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
