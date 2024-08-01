// To parse this JSON data, do
//
//     final vendorsModel = vendorsModelFromJson(jsonString);

import 'dart:convert';

import 'package:ayodhya_wad_assignment/features/explore_screen/domain/entity/vendor_entity/parent_company_datum_entity.dart';
import 'package:equatable/equatable.dart';

import '../../domain/entity/vendor_entity/vendors_entity.dart';

VendorsModel vendorsModelFromJson(String str) => VendorsModel.fromJson(json.decode(str));

String vendorsModelToJson(VendorsModel data) => json.encode(data.toJson());

class VendorsModel extends Equatable {
  final String? status;
  final List<ParentCompanyDatum>? parentCompanyData;

  VendorsModel({
    this.status,
    this.parentCompanyData,
  });

  factory VendorsModel.fromJson(Map<String, dynamic> json) => VendorsModel(
        status: json["status"],
        parentCompanyData: json["parentCompanyData"] == null ? [] : List<ParentCompanyDatum>.from(json["parentCompanyData"].map((x) => ParentCompanyDatum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "parentCompanyData": parentCompanyData == null ? [] : List<dynamic>.from(parentCompanyData!.map((x) => x.toJson())),
      };

  VendorsEntity toEntity() {
    return VendorsEntity(
      status: status ?? 'N/A',
      parentCompanyData: List.from(
        (parentCompanyData ?? []).map(
          (parentData) {
            return ParentCompanyDatumEntity(
              id: parentData.id ?? -99999,
              parentCompanyId: parentData.parentCompanyId ?? -99999,
              name: parentData.name ?? 'N/A',
              address: parentData.address ?? 'N/A',
              rating: parentData.rating ?? -99999,
              description: parentData.description ?? 'N/A',
              profileImg: parentData.profileImg ?? 'N/A',
              coverImg: parentData.coverImg ?? 'N/A',
            );
          },
        ),
      ),
    );
  }

  @override
  List<Object?> get props => [status, parentCompanyData];
}

class ParentCompanyDatum extends Equatable {
  final int? id;
  final int? parentCompanyId;
  final String? name;
  final String? address;
  final int? rating;
  final String? description;
  final String? profileImg;
  final String? coverImg;

  ParentCompanyDatum({
    this.id,
    this.parentCompanyId,
    this.name,
    this.address,
    this.rating,
    this.description,
    this.profileImg,
    this.coverImg,
  });

  factory ParentCompanyDatum.fromJson(Map<String, dynamic> json) => ParentCompanyDatum(
        id: json["id"],
        parentCompanyId: json["parent_company_id"],
        name: json["name"],
        address: json["address"],
        rating: json["rating"],
        description: json["description"],
        profileImg: json["profile_img"],
        coverImg: json["cover_img"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "parent_company_id": parentCompanyId,
        "name": name,
        "address": address,
        "rating": rating,
        "description": description,
        "profile_img": profileImg,
        "cover_img": coverImg,
      };

  @override
  List<Object?> get props => [id, parentCompanyId, name, address, rating, description, profileImg, coverImg];
}
