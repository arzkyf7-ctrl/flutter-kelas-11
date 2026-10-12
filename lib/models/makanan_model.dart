class MakananModel {
  String namaMakanan;
  String harga;
  String deskripsi;
  String gambar;
  MakananModel({
    required this.namaMakanan,
    required this.harga,
    this.deskripsi = "",
    this.gambar = "",
  });
}
