// // To parse this JSON data, do
// //
// //     final getArea = getAreaFromJson(jsonString);

// import 'dart:convert';

// GetArea getAreaFromJson(String str) => GetArea.fromJson(json.decode(str));

// String getAreaToJson(GetArea data) => json.encode(data.toJson());

// class GetArea {
//   GetArea({
//     required this.areas,
//   });

//   List<Area> areas;

//   factory GetArea.fromJson(Map<String, dynamic> json) => GetArea(
//         areas: List<Area>.from(json["areas"].map((x) => Area.fromJson(x))),
//       );

//   Map<String, dynamic> toJson() => {
//         "areas": List<dynamic>.from(areas.map((x) => x.toJson())),
//       };
// }

// class Area {
//   Area({
//     required this.id,
//     required this.name,
//     required this.latitude,
//     required this.longitude,
//     required this.zipCode,
//     required this.status,
//     required this.ipAddress,
//     required this.addedBy,
//     this.updateBy,
//     this.deletedAt,
//     required this.createdAt,
//     required this.updatedAt,
//   });

//   int? id;
//   String? name;
//   String? latitude;
//   String? longitude;
//   String? zipCode;
//   String? status;
//   String? ipAddress;
//   String? addedBy;
//   String? updateBy;
//   dynamic deletedAt;
//   DateTime? createdAt;
//   DateTime? updatedAt;

//   factory Area.fromJson(Map<String, dynamic> json) => Area(
//         id: json["id"],
//         name: json["name"],
//         latitude: json["latitude"],
//         longitude: json["longitude"],
//         zipCode: json["zip_code"],
//         status: json["status"],
//         ipAddress: json["ip_address"],
//         addedBy: json["added_by"],
//         updateBy: json["update_by"],
//         deletedAt: json["deleted_at"],
//         createdAt: DateTime.parse(json["created_at"]),
//         updatedAt: DateTime.parse(json["updated_at"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//         "latitude": latitude,
//         "longitude": longitude,
//         "zip_code": zipCode,
//         "status": status,
//         "ip_address": ipAddress,
//         "added_by": addedBy,
//         "update_by": updateBy,
//         "deleted_at": deletedAt,
//         "created_at": createdAt!.toIso8601String(),
//         "updated_at": updatedAt!.toIso8601String(),
//       };
// }
