import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import 'package:perpustakaan/page/buku/team.dart';
import 'package:perpustakaan/theme.dart';

class form_pinjam extends StatefulWidget {
  final Team buku;

  const form_pinjam({Key? key, required this.buku}) : super(key: key);

  @override
  _form_pinjamState createState() => _form_pinjamState();
}

class _form_pinjamState extends State<form_pinjam> {
  DateTime? _tanggalPeminjaman;
  DateTime? _tanggalPengembalian;
  TextEditingController _namaPeminjamController = TextEditingController();
  TextEditingController _tanggalPeminjamanController = TextEditingController();
  TextEditingController _tanggalPengembalianController =
      TextEditingController();
  late Dio _dio;

  final String baseUrl =
      "http://10.0.2.2:8000"; // Ganti dengan URL base API Anda

  @override
  void initState() {
    super.initState();
    _dio = Dio();
    _getUserName(); // Panggil method untuk mengambil nama pengguna saat initState()
  }

  Future<void> _getUserName() async {
    // Mendapatkan informasi pengguna yang sedang login dari Firebase Authentication
    final User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      setState(() {
        // Set nama pengguna dalam controller nama peminjam
        _namaPeminjamController.text = user.email!.split('@')[0];
      });
    } else {
      // Jika pengguna tidak ditemukan, kosongkan nama pengguna
      setState(() {
        _namaPeminjamController.text = 'Pengguna tidak ditemukan';
      });
    }
  }

  @override
  void dispose() {
    _namaPeminjamController.dispose();
    _tanggalPeminjamanController.dispose();
    _tanggalPengembalianController.dispose();
    super.dispose();
  }

  Future<void> _selectDateTime(BuildContext context, bool isPeminjaman) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null) {
      setState(() {
        if (isPeminjaman) {
          _tanggalPeminjaman = pickedDate;
          _tanggalPeminjamanController.text =
              DateFormat('yyyy-MM-dd').format(pickedDate);
        } else {
          _tanggalPengembalian = pickedDate;
          _tanggalPengembalianController.text =
              DateFormat('yyyy-MM-dd').format(pickedDate);
        }
      });
    }
  }

  void _submitForm() async {
    final apiUrl = '$baseUrl/api/peminjaman';

    if (_namaPeminjamController.text.isEmpty ||
        _tanggalPeminjaman == null ||
        _tanggalPengembalian == null) {
      _showSnackBar('Semua kolom harus diisi!', Colors.red);
      return;
    }

    try {
      final response = await _dio.post(
        apiUrl,
        data: {
          'nama_peminjam': _namaPeminjamController.text,
          'judul_buku': widget.buku.judul,
          'tgl_pinjam': DateFormat('yyyy-MM-dd').format(_tanggalPeminjaman!),
          'tgl_kembali': DateFormat('yyyy-MM-dd').format(_tanggalPengembalian!),
        },
      );
      if (response.statusCode == 200) {
        _showSnackBar('Data peminjaman berhasil disimpan', Colors.green);
        // Kembali ke layar sebelumnya (layar buku)
        Navigator.pop(context);
      } else {
        _showSnackBar('Gagal menyimpan data, coba lagi', Colors.red);
      }
    } catch (error) {
      _showSnackBar('Terjadi kesalahan: $error', Colors.red);
    }
  }

  void _showSnackBar(String message, Color color) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: biru,
        title: Text('Form Peminjaman'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                "Nama Peminjam",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 5),
              TextFormField(
                readOnly: true,
                controller: _namaPeminjamController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Masukkan nama peminjam",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Judul Buku",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 5),
              TextFormField(
                initialValue: widget.buku.judul,
                enabled: false,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Tanggal Peminjaman",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      enabled: false,
                      controller: _tanggalPeminjamanController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Pilih tanggal peminjaman",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      _selectDateTime(context, true);
                    },
                    icon: Icon(Icons.calendar_today),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Tanggal Pengembalian",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      enabled: false,
                      controller: _tanggalPengembalianController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Pilih tanggal pengembalian",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      _selectDateTime(context, false);
                    },
                    icon: Icon(Icons.calendar_today),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submitForm,
                style: ElevatedButton.styleFrom(backgroundColor: biru),
                child: Text('Submit', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
