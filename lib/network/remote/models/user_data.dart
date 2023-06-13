// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:convert';

// class GetItemResponse {
//   final List<InfoItem> listInfoItem;
//   final int responsecode;
//   GetItemResponse({
//     required this.listInfoItem,
//     required this.responsecode,
//   });
// }

// class InfoItem {
//   final String name;
//   final int number;
//   final int money;
//   InfoItem({
//     required this.name,
//     required this.number,
//     required this.money,
//   });

//   InfoItem copyWith({
//     String? name,
//     int? number,
//     int? money,
//   }) =>
//       InfoItem(
//         name: name ?? this.name,
//         number: number ?? this.number,
//         money: money ?? this.money,
//       );
//   factory InfoItem.fromRawJson(String str) =>
//       InfoItem.fromJson(json.decode(str));
//   factory InfoItem.fromJson(Map<String, dynamic> json) => InfoItem(
//         name: json['name'],
//         number: json['number'],
//         money: json['money'],
//       );
//   Map<String, dynamic> toJson() => {
//         "name": name,
//         "number": number,
//         "money": money,
//       };
// }
