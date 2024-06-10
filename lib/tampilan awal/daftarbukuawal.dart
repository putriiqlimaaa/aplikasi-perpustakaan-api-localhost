import 'package:flutter/material.dart';
import 'package:perpustakaan/page/buku/team.dart';
import 'package:perpustakaan/tampilan%20awal/detailbukuawal.dart';

class daftarbukuawal extends StatelessWidget {
  final Team buku;

  const daftarbukuawal({Key? key, required this.buku}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String baseUrl = "http://10.0.2.2:8000/images/";

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => detailbukuawal(buku: buku)),
        );
      },
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                '$baseUrl${buku.gambar}',
                fit: BoxFit.cover,
                width: double.maxFinite,
                height: 165,
              ),
            ),
            SizedBox(height: 9),
            Text(
              buku.judul,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
