import 'dart:convert';

List<MotivasiModel> motivasiModelFromJson(String str) =>
    List<MotivasiModel>.from(
        json.decode(str).map((x) => MotivasiModel.fromJson(x)));
String motivasiModelToJson(List<MotivasiModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MotivasiModel {
  String? id;
  String? motivasi;
  String? iduser;
  DateTime? tanggalInput;
  String? tanggalUpdate;

  MotivasiModel({
    this.id,
    this.motivasi,
    this.iduser,
    this.tanggalInput,
    this.tanggalUpdate,
  });

  factory MotivasiModel.fromJson(Map<String, dynamic> json) => MotivasiModel(
        id: json["id"],
        motivasi: json["isi_motivasi"],
        iduser: json["iduser"],
        tanggalInput: DateTime.parse(json["tanggal_input"]),
        tanggalUpdate: json["tanggal_update"],
      );
  Map<String, dynamic> toJson() => {
        "id": id,
        "isi_motivasi": motivasi,
        "iduser": iduser,
        "tanggal_input":
            "${tanggalInput?.year.toString().padLeft(4, '0')}-${tanggalInput?.month.toString().padLeft(2, '0')}-${tanggalInput?.day.toString().padLeft(2, '0')}",
        "tanggal_update": tanggalUpdate,
      };
}
