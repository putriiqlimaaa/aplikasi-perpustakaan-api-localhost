import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:perpustakaan/page/buku/daftarbuku.dart';
import 'package:perpustakaan/page/buku/team.dart';
import 'package:perpustakaan/theme.dart';

class Buku extends StatefulWidget {
  const Buku({Key? key}) : super(key: key);

  @override
  State<Buku> createState() => _BukuState();
}

class _BukuState extends State<Buku> {
  late List<Team> bukus = [];
  late List<Team> _filteredBooks;
  late TextEditingController _searchController;
  String _selectedCategory = '';

  final String baseUrl = "http://10.0.2.2:8000";

  @override
  void initState() {
    super.initState();
    _fetchDataFromTheServer();
    _filteredBooks = [];
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _fetchDataFromTheServer() async {
    final Dio dio = Dio();

    try {
      var response = await dio.get("$baseUrl/api/buku");
      print(response.statusCode);
      print(response.data);
      Map<String, dynamic> responseData = response.data;

      setState(() {
        bukus = (responseData['data'] as List<dynamic>)
            .map((e) => Team.fromJson(e))
            .toList();
        _filteredBooks = bukus;
      });
    } on DioError catch (e) {
      print(e);
    }
  }

  void _filterBooks(String query) {
    setState(() {
      _filteredBooks = bukus
          .where(
              (book) => book.judul.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  final List<String> categories = [
    'Pelajaran',
    'Novel',
    'Cerita Anak',
    'Sejarah',
    'Agama',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: biru,
      body: Padding(
        padding:
            const EdgeInsets.only(right: 12, left: 12, bottom: 12, top: 30),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: TextField(
                controller: _searchController,
                onChanged: _filterBooks,
                decoration: InputDecoration(
                  hintText: 'Search...',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50, // Lebar kategori
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedCategory = categories[index];
                        _filteredBooks = bukus
                            .where((book) => book.kategori == categories[index])
                            .toList();
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: _selectedCategory == categories[index]
                            ? Colors.grey // Warna yang dipilih
                            : Colors.white,
                      ),
                      child: Center(
                        child: Text(categories[index]),
                      ),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: _buildGridViewForCategory(_filteredBooks),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGridViewForCategory(List<Team> books) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: books.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: daftarbuku(buku: books[index]),
        );
      },
    );
  }
}
