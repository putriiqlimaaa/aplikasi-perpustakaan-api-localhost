class db {
  final int id; // eg. LAL
  final String namapeminjam;
  final String judul;
  final String tglkembali;
  final String denda;

  db.fromJson(Map<String, dynamic> json)
      : id = json['id'] ?? 0,
        namapeminjam = json['nama_peminjam'] ?? "",
        judul = json['judul_buku'] ?? "",
        tglkembali = json['tgl_kembali'] ?? "",
        denda = json['denda'] ?? "";
}
