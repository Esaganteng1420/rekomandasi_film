
import 'package:flutter/material.dart';
import '../models/film.dart';
import 'rating_bintang.dart';

class FilmCard extends StatelessWidget {
  final Film film;
  final VoidCallback onTap;

  const FilmCard({
    super.key,
    required this.film,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF1E293B),
      margin: const EdgeInsets.only(bottom: 14),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(14),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              // Poster film
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  film.poster,
                  width: 75,
                  height: 100,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      width: 75,
                      height: 100,
                      color: const Color(0xFF334155),
                      child: const Icon(
                        Icons.movie,
                        color: Color(0xFFF59E0B),
                        size: 38,
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(width: 14),

              // Informasi film
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      film.judul,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 6),

                    Text(
                      '${film.genre} • ${film.tahun}',
                      style: const TextStyle(
                        color: Colors.white60,
                        fontSize: 12,
                      ),
                    ),

                    const SizedBox(height: 9),

                    RatingBintang(
                      rating: film.rating,
                    ),

                    const SizedBox(height: 9),

                    Row(
                      children: [
                        const Icon(
                          Icons.access_time,
                          color: Colors.white54,
                          size: 15,
                        ),

                        const SizedBox(width: 5),

                        Text(
                          '${film.durasi} menit',
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 12,
                          ),
                        ),

                        const Spacer(),

                        const Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFFF59E0B),
                          size: 15,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
