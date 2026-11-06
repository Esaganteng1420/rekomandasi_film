
class Film {
  final int id;
  final String judul;
  final String genre;
  final int tahun;
  final double rating;
  final int durasi;
  final String sinopsis;
  final String poster;

  Film({
    required this.id,
    required this.judul,
    required this.genre,
    required this.tahun,
    required this.rating,
    required this.durasi,
    required this.sinopsis,
    required this.poster,
  });

  factory Film.fromJson(Map<String, dynamic> json) {
    return Film(
      id: json['id'],
      judul: json['judul'],
      genre: json['genre'],
      tahun: json['tahun'],
      rating: (json['rating'] as num).toDouble(),
      durasi: json['durasi'],
      sinopsis: json['sinopsis'],
      poster: json['poster'],
    );
  }
}
