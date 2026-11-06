
import 'package:flutter/material.dart';
import '../models/film.dart';
import '../widgets/rating_bintang.dart';

class DetailPage extends StatelessWidget {
  final Film film;

  const DetailPage({
    super.key,
    required this.film,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121826),

      appBar: AppBar(
        backgroundColor: const Color(0xFF121826),
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: const Text(
          'Detail Film',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Poster film
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  film.poster,
                  width: 180,
                  height: 230,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      width: 180,
                      height: 230,
                      color: const Color(0xFF334155),
                      child: const Icon(
                        Icons.movie,
                        color: Color(0xFFF59E0B),
                        size: 80,
                      ),
                    );
                  },
                ),
              ),
            ),

            const SizedBox(height: 25),

            // Judul
            Text(
              film.judul,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            // Genre dan tahun
            Text(
              '${film.genre} • ${film.tahun}',
              style: const TextStyle(
                color: Colors.white60,
                fontSize: 14,
              ),
            ),

            const SizedBox(height: 20),

            // Rating
            const Text(
              'Rating Film',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            RatingBintang(
              rating: film.rating,
            ),

            const SizedBox(height: 22),

            // Durasi
            const Text(
              'Durasi Film',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            Row(
              children: [
                const Icon(
                  Icons.access_time,
                  color: Color(0xFFF59E0B),
                ),

                const SizedBox(width: 8),

                Text(
                  '${film.durasi} menit '
                  '(${film.durasi ~/ 60} jam '
                  '${film.durasi % 60} menit)',
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 25),

            // Sinopsis
            const Text(
              'Sinopsis',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              film.sinopsis,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 14,
                height: 1.7,
              ),
            ),

            const SizedBox(height: 30),

            // Tombol kembali
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back),
                label: const Text('Kembali'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF59E0B),
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(
                    vertical: 14,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
