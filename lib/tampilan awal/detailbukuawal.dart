import 'package:flutter/material.dart';
import 'package:perpustakaan/page/buku/team.dart';
import 'package:perpustakaan/theme.dart';

class detailbukuawal extends StatelessWidget {
  final Team buku;

  const detailbukuawal({Key? key, required this.buku}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String baseUrl = "http://10.0.2.2:8000/images/";

    return Scaffold(
      appBar: AppBar(
        backgroundColor: biru,
        title: Text(buku.judul),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.network(
                  '$baseUrl${buku.gambar}',
                  fit: BoxFit.contain,
                  width: 400,
                  height: 400,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                buku.judul,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                'Pengarang: ${buku.penulis}',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 3),
              Text(
                'Penerbit: ${buku.penerbit}',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 3),
              Text(
                'Tahun Terbit: ${buku.tahunterbit}',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 3),
              Text(
                'Sinopsis: ${buku.sinopsis}',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
