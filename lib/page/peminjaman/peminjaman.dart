import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:perpustakaan/page/peminjaman/atributpeminjaman.dart';
import 'package:perpustakaan/page/pengembalian/datapengembalian.dart';
import 'package:perpustakaan/theme.dart';

class peminjaman extends StatefulWidget {
  peminjaman({Key? key});

  @override
  State<peminjaman> createState() => _peminjamanState();
}

class _peminjamanState extends State<peminjaman> {
  final String baseUrl = "http://10.0.2.2:8000";

  late List<dp> peminjamans = [];

  late String? authenticatedUserName;

  @override
  void initState() {
    super.initState();
    _getAuthenticatedUserName();
    _ambilDataDariServer();
  }

  Future<void> _getAuthenticatedUserName() async {
    final User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      setState(() {
        authenticatedUserName = user.email!.split('@')[0];
      });
    }
  }

  Future<void> _ambilDataDariServer() async {
    final Dio dio = Dio();

    try {
      var response = await dio.get("$baseUrl/api/peminjaman");
      print("Status Code: ${response.statusCode}");
      print("Response Data: ${response.data}");
      Map<String, dynamic> responseData = response.data;

      setState(() {
        peminjamans = (responseData['data'] as List<dynamic>)
            .map((e) => dp.fromJson(e))
            .where((peminjaman) =>
                peminjaman.namapeminjam == authenticatedUserName)
            .toList();
      });
    } on DioError catch (e) {
      print("Error fetching data: $e");
    }
  }

  void _prosesPengembalian(dp peminjaman, int denda) async {
    db dataPengembalian = db.fromJson({
      'id': peminjaman.id,
      'nama_peminjam': peminjaman.namapeminjam,
      'judul_buku': peminjaman.judul,
      'tgl_kembali': peminjaman.tglkembali,
      'denda': denda.toString(),
    });

    Map<String, dynamic> dataPengembalianMap = {
      'id': dataPengembalian.id,
      'nama_peminjam': dataPengembalian.namapeminjam,
      'judul_buku': dataPengembalian.judul,
      'tgl_kembali': dataPengembalian.tglkembali,
      'denda': dataPengembalian.denda,
    };

    final Dio dio = Dio();
    try {
      var responsePengembalian = await dio.post("$baseUrl/api/pengembalian",
          data: dataPengembalianMap);
      if (responsePengembalian.statusCode == 200) {
        var responseHapusPeminjaman =
            await dio.delete("$baseUrl/api/peminjaman/${peminjaman.id}");
        if (responseHapusPeminjaman.statusCode == 200) {
          setState(() {
            peminjamans.remove(peminjaman);
          });
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                content: Text(
                    'Buku berhasil dikembalikan dan data peminjaman dihapus')),
          );
        } else {
          print(
              "Error response (DELETE): ${responseHapusPeminjaman.statusCode} ${responseHapusPeminjaman.data}");
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                content: Text(
                    'Gagal menghapus data peminjaman: ${responseHapusPeminjaman.data}')),
          );
        }
      } else {
        print(
            "Error response (POST): ${responsePengembalian.statusCode} ${responsePengembalian.data}");
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text(
                  'Gagal mengembalikan buku: ${responsePengembalian.data}')),
        );
      }
    } catch (e) {
      print("Error: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Gagal mengembalikan buku')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: biru,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Peminjaman'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: peminjamans.length,
            itemBuilder: (context, index) {
              final peminjaman = peminjamans[index];
              return Card(
                color: Colors.blue,
                child: ListTile(
                  title: Text(
                    'Nama : ${peminjaman.namapeminjam}',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Judul : ${peminjaman.judul}',
                          style: TextStyle(color: Colors.white)),
                      Text('Tanggal pinjam : ${peminjaman.tglpinjam}',
                          style: TextStyle(color: Colors.white)),
                      Text('Tanggal kembali : ${peminjaman.tglkembali}',
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.check, color: Colors.white),
                    onPressed: () {
                      DateTime tanggalKembali =
                          DateTime.parse(peminjaman.tglkembali);
                      DateTime tanggalSekarang = DateTime.now();
                      int hariTerlambat =
                          tanggalSekarang.difference(tanggalKembali).inDays;
                      int denda = hariTerlambat > 0 ? hariTerlambat * 2000 : 0;

                      _prosesPengembalian(peminjaman, denda);
                    },
                  ),
                ),
              );
            }),
      ),
    );
  }
}
