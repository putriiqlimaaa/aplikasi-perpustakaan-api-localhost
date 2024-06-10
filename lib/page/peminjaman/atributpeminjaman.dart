class dp {
  final int id; // eg. LAL
  final String namapeminjam;
  final String judul;
  final String tglpinjam;
  final String tglkembali;

  dp.fromJson(Map<String, dynamic> json)
      : id = json['id'] ?? 0,
        namapeminjam = json['nama_peminjam'] ?? "",
        judul = json['judul_buku'] ?? "",
        tglpinjam = json['tgl_pinjam'] ?? "",
        tglkembali = json['tgl_kembali'] ?? "";
}
