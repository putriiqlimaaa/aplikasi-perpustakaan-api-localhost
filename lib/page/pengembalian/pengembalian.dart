import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:perpustakaan/page/pengembalian/datapengembalian.dart';
import 'package:perpustakaan/theme.dart';

class pengembalian extends StatefulWidget {
  pengembalian({Key? key});

  @override
  State<pengembalian> createState() => _pengembalianState();
}

class _pengembalianState extends State<pengembalian> {
  final String baseUrl = "http://10.0.2.2:8000";

  late List<db> pengembalians = [];
  late String? authenticatedUserName;

  @override
  void initState() {
    super.initState();
    _getAuthenticatedUserName();
    _fetchDataFromTheServer();
  }

  Future<void> _getAuthenticatedUserName() async {
    final User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      setState(() {
        authenticatedUserName = user.email!.split('@')[0];
      });
    }
  }

  Future<void> _fetchDataFromTheServer() async {
    final Dio dio = Dio();

    try {
      var response = await dio.get("$baseUrl/api/pengembalian");
      print(response.statusCode);
      print(response.data);
      Map<String, dynamic> responseData = response.data;

      setState(() {
        pengembalians = (responseData['data'] as List<dynamic>)
            .map((e) => db.fromJson(e))
            .where((pengembalian) =>
                pengembalian.namapeminjam == authenticatedUserName)
            .toList();
      });
    } on DioError catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: biru,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Pengembalian'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: pengembalians.length,
          itemBuilder: (context, index) {
            final pengembalian = pengembalians[index];
            return Card(
              color: Colors.blue,
              child: ListTile(
                title: Text(
                  pengembalian.judul,
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nama : ${pengembalian.namapeminjam}',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'Tanggal kembali : ${pengembalian.tglkembali}',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'Denda : Rp. ${pengembalian.denda}',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
