import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:perpustakaan/theme.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class data extends StatefulWidget {
  const data({Key? key}) : super(key: key);

  @override
  State<data> createState() => _dataState();
}

class _dataState extends State<data> {
  final String baseUrl = "http://10.0.2.2:8000";
  late List<_ChartData> peminjamanData = [];
  late List<_ChartData> pengembalianData = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  Future<void> _fetchData() async {
    final Dio dio = Dio();

    try {
      var responsePeminjaman = await dio.get("$baseUrl/api/peminjaman");
      var responsePengembalian = await dio.get("$baseUrl/api/pengembalian");

      print("Response Peminjaman: $responsePeminjaman");
      print("Response Pengembalian: $responsePengembalian");

      if (responsePeminjaman.data['status'] &&
          responsePeminjaman.data['data'] is List) {
        List<dynamic> peminjamanList = responsePeminjaman.data['data'];
        Map<String, int> countPeminjamanById = _countById(peminjamanList);
        peminjamanData = _mapToChartData(countPeminjamanById);
      }

      if (responsePengembalian.data['status'] &&
          responsePengembalian.data['data'] is List) {
        List<dynamic> pengembalianList = responsePengembalian.data['data'];
        Map<String, int> countPengembalianById = _countById(pengembalianList);
        pengembalianData = _mapToChartData(countPengembalianById);
      }

      setState(() {
        isLoading = false;
      });
    } catch (e) {
      print("Error: $e");
      setState(() {
        isLoading = false;
      });
    }
  }

  Map<String, int> _countById(List<dynamic> dataList) {
    Map<String, int> countById = {};

    for (var data in dataList) {
      String id = data['id'].toString();

      if (countById.containsKey(id)) {
        countById[id] = countById[id]! + 1;
      } else {
        countById[id] = 1;
      }
    }

    return countById;
  }

  List<_ChartData> _mapToChartData(Map<String, int> countById) {
    List<_ChartData> chartDataList = [];

    countById.forEach((id, count) {
      chartDataList.add(_ChartData(id, count));
    });

    return chartDataList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: biru, // Assuming 'biru' is defined somewhere
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
        child: isLoading
            ? Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
                child: Column(
                  children: [
                    _buildChart(peminjamanData,
                        'Jumlah Peminjaman berdasarkan ID', 'Peminjaman'),
                    SizedBox(height: 20),
                    _buildChart(pengembalianData,
                        'Jumlah Pengembalian berdasarkan ID', 'Pengembalian'),
                  ],
                ),
              ),
      ),
    );
  }

  Widget _buildChart(
      List<_ChartData> chartData, String xAxisTitle, String dataType) {
    return Column(
      children: [
        Text('Jumlah data $dataType: ${chartData.length}'),
        SizedBox(height: 20),
        Container(
          height: 300,
          width: double.infinity,
          child: SfCartesianChart(
            primaryXAxis: CategoryAxis(
              title: AxisTitle(text: xAxisTitle),
              majorGridLines: MajorGridLines(color: biru),
              isVisible: false,
            ),
            primaryYAxis: NumericAxis(
              title: AxisTitle(text: 'Jumlah'),
              minimum: 0,
              interval: 1,
              majorGridLines: MajorGridLines(color: biru),
            ),
            series: [
              ColumnSeries<_ChartData, String>(
                dataSource: chartData,
                xValueMapper: (_ChartData data, _) => data.id,
                yValueMapper: (_ChartData data, _) => data.count,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ChartData {
  _ChartData(this.id, this.count);
  final String id;
  final int count;
}
