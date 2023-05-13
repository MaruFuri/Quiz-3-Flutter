import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

import 'Usaha.dart';
import 'event.dart';

class ProviderUsaha extends Bloc<DataEvent, List<Usaha>> {
  ProviderUsaha() : super([]) {
    on<FetchDataEvent>((event, emit) {
      fetchData(); // Meminta data
    });
  }

  Future<void> fetchData() async {
    String url = 'http://178.128.17.76:8000/daftar_umkm';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonResponse = jsonDecode(response.body);
      List<dynamic> data = jsonResponse['data'];
      List<Usaha> umkm = data.map((usaha) => Usaha.fromJson(usaha)).toList();
      add(DataSiapEvent(umkm)); // Mengirim event data siap dengan data umkm
    } else {
      throw Exception('Failed to load umkm');
    }
  }
}
