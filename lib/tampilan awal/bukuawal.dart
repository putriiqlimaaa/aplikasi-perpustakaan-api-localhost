import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:perpustakaan/login%20dan%20sign%20up/login.dart';
import 'package:perpustakaan/page/buku/team.dart';
import 'package:perpustakaan/tampilan%20awal/daftarbukuawal.dart';
import 'package:perpustakaan/theme.dart';

class bukuawal extends StatefulWidget {
  bukuawal({Key? key}) : super(key: key);

  @override
  _bukuawalState createState() => _bukuawalState();
}

class _bukuawalState extends State<bukuawal> {
  late List<Team> users = [];
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
        users = (responseData['data'] as List<dynamic>)
            .map((e) => Team.fromJson(e))
            .toList();
        _filteredBooks = users;
      });
    } on DioError catch (e) {
      print(e);
    }
  }

  void _filterBooks(String query) {
    setState(() {
      _filteredBooks = users
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
            Row(
              children: [
                Expanded(
                  child: Padding(
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
                ),
                SizedBox(
                  width: 8,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => login()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10), // Set rounded corners here
                    ),
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
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
                        _filteredBooks = users
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
          child: daftarbukuawal(buku: books[index]),
        );
      },
    );
  }
}
