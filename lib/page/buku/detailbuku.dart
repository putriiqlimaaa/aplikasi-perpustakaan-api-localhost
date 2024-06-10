import 'package:flutter/material.dart';
import 'package:perpustakaan/page/buku/team.dart';
import 'package:perpustakaan/page/peminjaman/form_pinjam.dart';
import 'package:perpustakaan/theme.dart';

class detailbuku extends StatelessWidget {
  final Team buku;

  const detailbuku({Key? key, required this.buku}) : super(key: key);

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
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 60,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => form_pinjam(buku: buku)),
              );
            },
            child: Text(
              'Pinjam',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
