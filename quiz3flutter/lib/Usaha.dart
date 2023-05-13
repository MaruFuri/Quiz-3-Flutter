class Usaha {
  String namaumkm;
  String jenisumkm;

  Usaha({required this.namaumkm, required this.jenisumkm});

  factory Usaha.fromJson(Map<String, dynamic> json) {
    return Usaha(
      namaumkm: json['nama'],
      jenisumkm: json['jenis'],
    );
  }
}
