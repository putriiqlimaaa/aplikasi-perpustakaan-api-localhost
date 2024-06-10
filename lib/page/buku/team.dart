class Team {
  final int id; // eg. LAL
  final String gambar;
  final String judul;
  final String sinopsis;
  final String penulis;
  final String penerbit;
  final String tahunterbit;
  final String kategori;
  final String stok;

  Team.fromJson(Map<String, dynamic> json)
      : id = json['id'] ?? 0,
        gambar = json['gambar'] ?? "",
        judul = json['judul'] ?? "",
        sinopsis = json['sinopsis'] ?? "",
        penulis = json['penulis'] ?? "",
        penerbit = json['penerbit'] ?? "",
        tahunterbit = json['tahun_terbit'] ?? "",
        kategori = json['kategori'] ?? "",
        stok = json['stok'] ?? "";
}
