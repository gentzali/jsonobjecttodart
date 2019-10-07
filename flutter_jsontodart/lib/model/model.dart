class CancelCosmetic {

  List<Data> data;

  CancelCosmetic({this.data});

  CancelCosmetic.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String namaProduk;
  String pemegang;
  String bahanDikesan;
  String pengilang;
  String noNotifikasi;

  Data(
      {this.namaProduk,
        this.pemegang,
        this.bahanDikesan,
        this.pengilang,
        this.noNotifikasi});

  Data.fromJson(Map<String, dynamic> json) {
    namaProduk = json['Nama_Produk'];
    pemegang = json['Pemegang'];
    bahanDikesan = json['Bahan_Dikesan'];
    pengilang = json['Pengilang'];
    noNotifikasi = json['No_Notifikasi'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Nama_Produk'] = this.namaProduk;
    data['Pemegang'] = this.pemegang;
    data['Bahan_Dikesan'] = this.bahanDikesan;
    data['Pengilang'] = this.pengilang;
    data['No_Notifikasi'] = this.noNotifikasi;
    return data;
  }
}