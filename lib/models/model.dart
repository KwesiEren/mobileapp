// To parse this JSON data, do
//
//     final GeoData = GeoDataFromJson(jsonString);

import 'dart:convert';

List<GeoData> geoDataFromJson(String str) =>
    List<GeoData>.from(json.decode(str).map((x) => GeoData.fromJson(x)));

String geoDataToJson(List<GeoData> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GeoData {
  final int? id;
  final String? region;
  final String? charcoalProductionType;
  final String? image; // Image data in Base64 format
  final double? latitude;
  final double? longitude;
  final double? accuracy;

  GeoData({
    this.id,
    this.region,
    this.charcoalProductionType,
    this.image,
    this.latitude,
    this.longitude,
    this.accuracy,
  });

  factory GeoData.fromJson(Map<String, dynamic> json) {
    return GeoData(
      id: json['id'] as int?,
      region: json['region'] as String?,
      charcoalProductionType: json['charcoalProductionType'] as String?,
      image: json['image'] as String?, // Base64 string
      latitude: json['latitude'] as double?,
      longitude: json['longitude'] as double?,
      accuracy: json['accuracy'] as double?,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> geodata = <String, dynamic>{};
    geodata['id'] = id;
    geodata['region'] = region;
    geodata['charcoalProductionType'] = charcoalProductionType;
    geodata['image'] = image;
    geodata['latitude'] = latitude;
    geodata['longitude'] = longitude;
    geodata['accuracy'] = accuracy;
    return geodata;
  }
}
