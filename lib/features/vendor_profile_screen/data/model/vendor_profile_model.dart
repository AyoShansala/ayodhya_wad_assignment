// // To parse this JSON data, do
// //
// //     final vendorProfileModel = vendorProfileModelFromJson(jsonString);

// import 'dart:convert';

// VendorProfileModel vendorProfileModelFromJson(String str) => VendorProfileModel.fromJson(json.decode(str));

// String vendorProfileModelToJson(VendorProfileModel data) => json.encode(data.toJson());

// class VendorProfileModel {
//     final String? status;
//     final CompanyData? companyData;
//     final dynamic subscribedPackage;
//     final List<dynamic>? slashedCoupons;
//     final List<dynamic>? userSpecificCoupons;

//     VendorProfileModel({
//         this.status,
//         this.companyData,
//         this.subscribedPackage,
//         this.slashedCoupons,
//         this.userSpecificCoupons,
//     });

//     factory VendorProfileModel.fromJson(Map<String, dynamic> json) => VendorProfileModel(
//         status: json["status"],
//         companyData: CompanyData.fromJson(json["companyData"]),
//         subscribedPackage: json["subscribedPackage"],
//         slashedCoupons: List<dynamic>.from(json["slashedCoupons"].map((x) => x)),
//         userSpecificCoupons: List<dynamic>.from(json["userSpecificCoupons"].map((x) => x)),
//     );

//     Map<String, dynamic> toJson() => {
//         "status": status,
//         "companyData": companyData.toJson(),
//         "subscribedPackage": subscribedPackage,
//         "slashedCoupons": List<dynamic>.from(slashedCoupons.map((x) => x)),
//         "userSpecificCoupons": List<dynamic>.from(userSpecificCoupons.map((x) => x)),
//     };
// }

// class CompanyData {
//     final int id;
//     final String name;
//     final dynamic subName;
//     final String description;
//     final String addressLineOne;
//     final int city;
//     final int district;
//     final int province;
//     final int country;
//     final int postalCode;
//     final String website;
//     final dynamic menuLink;
//     final String hotlineNumber;
//     final dynamic phoneNumberOne;
//     final dynamic phoneNumberTwo;
//     final int isActive;
//     final int updatedBy;
//     final DateTime createdAt;
//     final DateTime updatedAt;
//     final String facebook;
//     final dynamic instagram;
//     final String vendorContactEmail;
//     final String tags;
//     final dynamic termsConditions;
//     final String siteUrl;
//     final String profileImg;
//     final String coverImg;
//     final List<Img> menuImg;
//     final int rating;
//     final List<Img> bannerImg;
//     final List<Company> company;
//     final List<ParentComCategoryDatum> parentComCategoryData;
//     final CityData cityData;
//     final Data districtData;
//     final Data provinceData;
//     final CountryData countryData;
//     final dynamic socialLinks;
//     final List<Coupon> coupons;
//     final List<Media> media;

//     CompanyData({
//         this.id,
//         this.name,
//         this.subName,
//         this.description,
//         this.addressLineOne,
//         this.city,
//         this.district,
//         this.province,
//         this.country,
//         this.postalCode,
//         this.website,
//         this.menuLink,
//         this.hotlineNumber,
//         this.phoneNumberOne,
//         this.phoneNumberTwo,
//         this.isActive,
//         this.updatedBy,
//         this.createdAt,
//         this.updatedAt,
//         this.facebook,
//         this.instagram,
//         this.vendorContactEmail,
//         this.tags,
//         this.termsConditions,
//         this.siteUrl,
//         this.profileImg,
//         this.coverImg,
//         this.menuImg,
//         this.rating,
//         this.bannerImg,
//         this.company,
//         this.parentComCategoryData,
//         this.cityData,
//         this.districtData,
//         this.provinceData,
//         this.countryData,
//         this.socialLinks,
//         this.coupons,
//         this.media,
//     });

//     factory CompanyData.fromJson(Map<String, dynamic> json) => CompanyData(
//         id: json["id"],
//         name: json["name"],
//         subName: json["sub_name"],
//         description: json["description"],
//         addressLineOne: json["address_line_one"],
//         city: json["city"],
//         district: json["district"],
//         province: json["province"],
//         country: json["country"],
//         postalCode: json["postal_code"],
//         website: json["website"],
//         menuLink: json["menu_link"],
//         hotlineNumber: json["hotline_number"],
//         phoneNumberOne: json["phone_number_one"],
//         phoneNumberTwo: json["phone_number_two"],
//         isActive: json["is_active"],
//         updatedBy: json["updated_by"],
//         createdAt: DateTime.parse(json["created_at"]),
//         updatedAt: DateTime.parse(json["updated_at"]),
//         facebook: json["facebook"],
//         instagram: json["instagram"],
//         vendorContactEmail: json["vendor_contact_email"],
//         tags: json["tags"],
//         termsConditions: json["terms_conditions"],
//         siteUrl: json["site_url"],
//         profileImg: json["profile_img"],
//         coverImg: json["cover_img"],
//         menuImg: List<Img>.from(json["menu_img"].map((x) => Img.fromJson(x))),
//         rating: json["rating"],
//         bannerImg: List<Img>.from(json["banner_img"].map((x) => Img.fromJson(x))),
//         company: List<Company>.from(json["company"].map((x) => Company.fromJson(x))),
//         parentComCategoryData: List<ParentComCategoryDatum>.from(json["parent_com_category_data"].map((x) => ParentComCategoryDatum.fromJson(x))),
//         cityData: CityData.fromJson(json["city_data"]),
//         districtData: Data.fromJson(json["district_data"]),
//         provinceData: Data.fromJson(json["province_data"]),
//         countryData: CountryData.fromJson(json["country_data"]),
//         socialLinks: json["social_links"],
//         coupons: List<Coupon>.from(json["coupons"].map((x) => Coupon.fromJson(x))),
//         media: List<Media>.from(json["media"].map((x) => Media.fromJson(x))),
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//         "sub_name": subName,
//         "description": description,
//         "address_line_one": addressLineOne,
//         "city": city,
//         "district": district,
//         "province": province,
//         "country": country,
//         "postal_code": postalCode,
//         "website": website,
//         "menu_link": menuLink,
//         "hotline_number": hotlineNumber,
//         "phone_number_one": phoneNumberOne,
//         "phone_number_two": phoneNumberTwo,
//         "is_active": isActive,
//         "updated_by": updatedBy,
//         "created_at": createdAt.toIso8601String(),
//         "updated_at": updatedAt.toIso8601String(),
//         "facebook": facebook,
//         "instagram": instagram,
//         "vendor_contact_email": vendorContactEmail,
//         "tags": tags,
//         "terms_conditions": termsConditions,
//         "site_url": siteUrl,
//         "profile_img": profileImg,
//         "cover_img": coverImg,
//         "menu_img": List<dynamic>.from(menuImg.map((x) => x.toJson())),
//         "rating": rating,
//         "banner_img": List<dynamic>.from(bannerImg.map((x) => x.toJson())),
//         "company": List<dynamic>.from(company.map((x) => x.toJson())),
//         "parent_com_category_data": List<dynamic>.from(parentComCategoryData.map((x) => x.toJson())),
//         "city_data": cityData.toJson(),
//         "district_data": districtData.toJson(),
//         "province_data": provinceData.toJson(),
//         "country_data": countryData.toJson(),
//         "social_links": socialLinks,
//         "coupons": List<dynamic>.from(coupons.map((x) => x.toJson())),
//         "media": List<dynamic>.from(media.map((x) => x.toJson())),
//     };
// }

// class Img {
//     final int id;
//     final String value;

//     Img({
//         this.id,
//         this.value,
//     });

//     factory Img.fromJson(Map<String, dynamic> json) => Img(
//         id: json["id"],
//         value: json["value"],
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "value": value,
//     };
// }

// class CityData {
//     final int id;
//     final int districtId;
//     final String nameEn;
//     final String nameSi;
//     final dynamic nameTa;
//     final dynamic subNameEn;
//     final dynamic subNameSi;
//     final dynamic subNameTa;
//     final String postcode;
//     final double latitude;
//     final double longitude;
//     final int isActive;

//     CityData({
//         this.id,
//         this.districtId,
//         this.nameEn,
//         this.nameSi,
//         this.nameTa,
//         this.subNameEn,
//         this.subNameSi,
//         this.subNameTa,
//         this.postcode,
//         this.latitude,
//         this.longitude,
//         this.isActive,
//     });

//     factory CityData.fromJson(Map<String, dynamic> json) => CityData(
//         id: json["id"],
//         districtId: json["district_id"],
//         nameEn: json["name_en"],
//         nameSi: json["name_si"],
//         nameTa: json["name_ta"],
//         subNameEn: json["sub_name_en"],
//         subNameSi: json["sub_name_si"],
//         subNameTa: json["sub_name_ta"],
//         postcode: json["postcode"],
//         latitude: json["latitude"].toDouble(),
//         longitude: json["longitude"].toDouble(),
//         isActive: json["is_active"],
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "district_id": districtId,
//         "name_en": nameEn,
//         "name_si": nameSi,
//         "name_ta": nameTa,
//         "sub_name_en": subNameEn,
//         "sub_name_si": subNameSi,
//         "sub_name_ta": subNameTa,
//         "postcode": postcode,
//         "latitude": latitude,
//         "longitude": longitude,
//         "is_active": isActive,
//     };
// }

// class Company {
//     final int id;
//     final int parentCompanyId;
//     final String name;
//     final dynamic subName;
//     final String description;
//     final String addressLineOne;
//     final int city;
//     final int district;
//     final int province;
//     final int country;
//     final int postalCode;
//     final String website;
//     final dynamic menuLink;
//     final String hotlineNumber;
//     final dynamic phoneNumberOne;
//     final dynamic phoneNumberTwo;
//     final double locationLat;
//     final double locationLng;
//     final String code;
//     final int isActive;
//     final int updatedBy;
//     final DateTime createdAt;
//     final DateTime updatedAt;
//     final String profileImg;
//     final String coverImg;
//     final List<Media> media;

//     Company({
//         this.id,
//         this.parentCompanyId,
//         this.name,
//         this.subName,
//         this.description,
//         this.addressLineOne,
//         this.city,
//         this.district,
//         this.province,
//         this.country,
//         this.postalCode,
//         this.website,
//         this.menuLink,
//         this.hotlineNumber,
//         this.phoneNumberOne,
//         this.phoneNumberTwo,
//         this.locationLat,
//         this.locationLng,
//         this.code,
//         this.isActive,
//         this.updatedBy,
//         this.createdAt,
//         this.updatedAt,
//         this.profileImg,
//         this.coverImg,
//         this.media,
//     });

//     factory Company.fromJson(Map<String, dynamic> json) => Company(
//         id: json["id"],
//         parentCompanyId: json["parent_company_id"],
//         name: json["name"],
//         subName: json["sub_name"],
//         description: json["description"],
//         addressLineOne: json["address_line_one"],
//         city: json["city"],
//         district: json["district"],
//         province: json["province"],
//         country: json["country"],
//         postalCode: json["postal_code"],
//         website: json["website"],
//         menuLink: json["menu_link"],
//         hotlineNumber: json["hotline_number"],
//         phoneNumberOne: json["phone_number_one"],
//         phoneNumberTwo: json["phone_number_two"],
//         locationLat: json["location_lat"].toDouble(),
//         locationLng: json["location_lng"].toDouble(),
//         code: json["code"],
//         isActive: json["is_active"],
//         updatedBy: json["updated_by"],
//         createdAt: DateTime.parse(json["created_at"]),
//         updatedAt: DateTime.parse(json["updated_at"]),
//         profileImg: json["profile_img"],
//         coverImg: json["cover_img"],
//         media: List<Media>.from(json["media"].map((x) => Media.fromJson(x))),
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "parent_company_id": parentCompanyId,
//         "name": name,
//         "sub_name": subName,
//         "description": description,
//         "address_line_one": addressLineOne,
//         "city": city,
//         "district": district,
//         "province": province,
//         "country": country,
//         "postal_code": postalCode,
//         "website": website,
//         "menu_link": menuLink,
//         "hotline_number": hotlineNumber,
//         "phone_number_one": phoneNumberOne,
//         "phone_number_two": phoneNumberTwo,
//         "location_lat": locationLat,
//         "location_lng": locationLng,
//         "code": code,
//         "is_active": isActive,
//         "updated_by": updatedBy,
//         "created_at": createdAt.toIso8601String(),
//         "updated_at": updatedAt.toIso8601String(),
//         "profile_img": profileImg,
//         "cover_img": coverImg,
//         "media": List<dynamic>.from(media.map((x) => x.toJson())),
//     };
// }

// class Media {
//     final int id;
//     final String modelType;
//     final int modelId;
//     final String collectionName;
//     final String name;
//     final String fileName;
//     final String mimeType;
//     final String disk;
//     final int size;
//     final List<dynamic> manipulations;
//     final List<dynamic> customProperties;
//     final List<dynamic> responsiveImages;
//     final int orderColumn;
//     final DateTime createdAt;
//     final DateTime updatedAt;

//     Media({
//         this.id,
//         this.modelType,
//         this.modelId,
//         this.collectionName,
//         this.name,
//         this.fileName,
//         this.mimeType,
//         this.disk,
//         this.size,
//         this.manipulations,
//         this.customProperties,
//         this.responsiveImages,
//         this.orderColumn,
//         this.createdAt,
//         this.updatedAt,
//     });

//     factory Media.fromJson(Map<String, dynamic> json) => Media(
//         id: json["id"],
//         modelType: json["model_type"],
//         modelId: json["model_id"],
//         collectionName: json["collection_name"],
//         name: json["name"],
//         fileName: json["file_name"],
//         mimeType: json["mime_type"],
//         disk: json["disk"],
//         size: json["size"],
//         manipulations: List<dynamic>.from(json["manipulations"].map((x) => x)),
//         customProperties: List<dynamic>.from(json["custom_properties"].map((x) => x)),
//         responsiveImages: List<dynamic>.from(json["responsive_images"].map((x) => x)),
//         orderColumn: json["order_column"],
//         createdAt: DateTime.parse(json["created_at"]),
//         updatedAt: DateTime.parse(json["updated_at"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "model_type": modelType,
//         "model_id": modelId,
//         "collection_name": collectionName,
//         "name": name,
//         "file_name": fileName,
//         "mime_type": mimeType,
//         "disk": disk,
//         "size": size,
//         "manipulations": List<dynamic>.from(manipulations.map((x) => x)),
//         "custom_properties": List<dynamic>.from(customProperties.map((x) => x)),
//         "responsive_images": List<dynamic>.from(responsiveImages.map((x) => x)),
//         "order_column": orderColumn,
//         "created_at": createdAt.toIso8601String(),
//         "updated_at": updatedAt.toIso8601String(),
//     };
// }

// class CountryData {
//     final int id;
//     final String iso;
//     final String name;
//     final String nicename;
//     final String iso3;
//     final int numcode;
//     final int phonecode;
//     final int isActive;
//     final DateTime createdAt;
//     final DateTime updatedAt;

//     CountryData({
//         this.id,
//         this.iso,
//         this.name,
//         this.nicename,
//         this.iso3,
//         this.numcode,
//         this.phonecode,
//         this.isActive,
//         this.createdAt,
//         this.updatedAt,
//     });

//     factory CountryData.fromJson(Map<String, dynamic> json) => CountryData(
//         id: json["id"],
//         iso: json["iso"],
//         name: json["name"],
//         nicename: json["nicename"],
//         iso3: json["iso3"],
//         numcode: json["numcode"],
//         phonecode: json["phonecode"],
//         isActive: json["is_active"],
//         createdAt: DateTime.parse(json["created_at"]),
//         updatedAt: DateTime.parse(json["updated_at"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "iso": iso,
//         "name": name,
//         "nicename": nicename,
//         "iso3": iso3,
//         "numcode": numcode,
//         "phonecode": phonecode,
//         "is_active": isActive,
//         "created_at": createdAt.toIso8601String(),
//         "updated_at": updatedAt.toIso8601String(),
//     };
// }

// class Coupon {
//     final int id;
//     final String title;
//     final dynamic subtitle;
//     final String description;
//     final int parentCompanyId;
//     final int value;
//     final String valueType;
//     final int systemMaxSlash;
//     final int customerMaxSlash;
//     final int minSaving;
//     final int maxSaving;
//     final DateTime validFrom;
//     final DateTime validTo;
//     final dynamic moreInfo;
//     final String termsConditions;
//     final int isActive;
//     final int isSpecialCoupon;
//     final DateTime createdAt;
//     final DateTime updatedAt;
//     final int isLimited;
//     final String couponTags;
//     final int isUser;
//     final int isForEveryone;
//     final int isAvailableForExpired;
//     final int hasFavorited;
//     final String thumbnail;
//     final List<CouponPackagesDatum> couponPackagesData;
//     final List<dynamic> media;

//     Coupon({
//         this.id,
//         this.title,
//         this.subtitle,
//         this.description,
//         this.parentCompanyId,
//         this.value,
//         this.valueType,
//         this.systemMaxSlash,
//         this.customerMaxSlash,
//         this.minSaving,
//         this.maxSaving,
//         this.validFrom,
//         this.validTo,
//         this.moreInfo,
//         this.termsConditions,
//         this.isActive,
//         this.isSpecialCoupon,
//         this.createdAt,
//         this.updatedAt,
//         this.isLimited,
//         this.couponTags,
//         this.isUser,
//         this.isForEveryone,
//         this.isAvailableForExpired,
//         this.hasFavorited,
//         this.thumbnail,
//         this.couponPackagesData,
//         this.media,
//     });

//     factory Coupon.fromJson(Map<String, dynamic> json) => Coupon(
//         id: json["id"],
//         title: json["title"],
//         subtitle: json["subtitle"],
//         description: json["description"],
//         parentCompanyId: json["parent_company_id"],
//         value: json["value"],
//         valueType: json["value_type"],
//         systemMaxSlash: json["system_max_slash"],
//         customerMaxSlash: json["customer_max_slash"],
//         minSaving: json["min_saving"],
//         maxSaving: json["max_saving"],
//         validFrom: DateTime.parse(json["valid_from"]),
//         validTo: DateTime.parse(json["valid_to"]),
//         moreInfo: json["more_info"],
//         termsConditions: json["terms_conditions"],
//         isActive: json["is_active"],
//         isSpecialCoupon: json["is_special_coupon"],
//         createdAt: DateTime.parse(json["created_at"]),
//         updatedAt: DateTime.parse(json["updated_at"]),
//         isLimited: json["is_limited"],
//         couponTags: json["coupon_tags"],
//         isUser: json["is_user"],
//         isForEveryone: json["is_for_everyone"],
//         isAvailableForExpired: json["is_available_for_expired"],
//         hasFavorited: json["hasFavorited"],
//         thumbnail: json["thumbnail"],
//         couponPackagesData: List<CouponPackagesDatum>.from(json["coupon_packages_data"].map((x) => CouponPackagesDatum.fromJson(x))),
//         media: List<dynamic>.from(json["media"].map((x) => x)),
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "title": title,
//         "subtitle": subtitle,
//         "description": description,
//         "parent_company_id": parentCompanyId,
//         "value": value,
//         "value_type": valueType,
//         "system_max_slash": systemMaxSlash,
//         "customer_max_slash": customerMaxSlash,
//         "min_saving": minSaving,
//         "max_saving": maxSaving,
//         "valid_from": validFrom.toIso8601String(),
//         "valid_to": validTo.toIso8601String(),
//         "more_info": moreInfo,
//         "terms_conditions": termsConditions,
//         "is_active": isActive,
//         "is_special_coupon": isSpecialCoupon,
//         "created_at": createdAt.toIso8601String(),
//         "updated_at": updatedAt.toIso8601String(),
//         "is_limited": isLimited,
//         "coupon_tags": couponTags,
//         "is_user": isUser,
//         "is_for_everyone": isForEveryone,
//         "is_available_for_expired": isAvailableForExpired,
//         "hasFavorited": hasFavorited,
//         "thumbnail": thumbnail,
//         "coupon_packages_data": List<dynamic>.from(couponPackagesData.map((x) => x.toJson())),
//         "media": List<dynamic>.from(media.map((x) => x)),
//     };
// }

// class CouponPackagesDatum {
//     final int id;
//     final int couponId;
//     final int packageId;
//     final DateTime createdAt;
//     final DateTime updatedAt;
//     final dynamic deletedAt;
//     final PackageData packageData;

//     CouponPackagesDatum({
//         this.id,
//         this.couponId,
//         this.packageId,
//         this.createdAt,
//         this.updatedAt,
//         this.deletedAt,
//         this.packageData,
//     });

//     factory CouponPackagesDatum.fromJson(Map<String, dynamic> json) => CouponPackagesDatum(
//         id: json["id"],
//         couponId: json["coupon_id"],
//         packageId: json["package_id"],
//         createdAt: DateTime.parse(json["created_at"]),
//         updatedAt: DateTime.parse(json["updated_at"]),
//         deletedAt: json["deleted_at"],
//         packageData: PackageData.fromJson(json["package_data"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "coupon_id": couponId,
//         "package_id": packageId,
//         "created_at": createdAt.toIso8601String(),
//         "updated_at": updatedAt.toIso8601String(),
//         "deleted_at": deletedAt,
//         "package_data": packageData.toJson(),
//     };
// }

// class PackageData {
//     final int id;
//     final String name;
//     final int value;
//     final String currencyCode;
//     final int validDuration;
//     final String description;
//     final String moreInfo;
//     final String moreInfoUrl;
//     final String termsConditions;
//     final int isActive;
//     final dynamic zohoItemCode;
//     final int updatedBy;
//     final DateTime createdAt;
//     final DateTime updatedAt;
//     final String packageColor;
//     final String zohoItemId;
//     final int isHidden;
//     final int isOneTimeUsage;
//     final int isInstallment;
//     final int installmentAmount;

//     PackageData({
//         this.id,
//         this.name,
//         this.value,
//         this.currencyCode,
//         this.validDuration,
//         this.description,
//         this.moreInfo,
//         this.moreInfoUrl,
//         this.termsConditions,
//         this.isActive,
//         this.zohoItemCode,
//         this.updatedBy,
//         this.createdAt,
//         this.updatedAt,
//         this.packageColor,
//         this.zohoItemId,
//         this.isHidden,
//         this.isOneTimeUsage,
//         this.isInstallment,
//         this.installmentAmount,
//     });

//     factory PackageData.fromJson(Map<String, dynamic> json) => PackageData(
//         id: json["id"],
//         name: json["name"],
//         value: json["value"],
//         currencyCode: json["currency_code"],
//         validDuration: json["valid_duration"],
//         description: json["description"],
//         moreInfo: json["more_info"],
//         moreInfoUrl: json["more_info_url"],
//         termsConditions: json["terms_conditions"],
//         isActive: json["is_active"],
//         zohoItemCode: json["zoho_item_code"],
//         updatedBy: json["updated_by"],
//         createdAt: DateTime.parse(json["created_at"]),
//         updatedAt: DateTime.parse(json["updated_at"]),
//         packageColor: json["package_color"],
//         zohoItemId: json["zoho_item_id"],
//         isHidden: json["is_hidden"],
//         isOneTimeUsage: json["is_one_time_usage"],
//         isInstallment: json["is_installment"],
//         installmentAmount: json["installment_amount"],
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "name": name,
//         "value": value,
//         "currency_code": currencyCode,
//         "valid_duration": validDuration,
//         "description": description,
//         "more_info": moreInfo,
//         "more_info_url": moreInfoUrl,
//         "terms_conditions": termsConditions,
//         "is_active": isActive,
//         "zoho_item_code": zohoItemCode,
//         "updated_by": updatedBy,
//         "created_at": createdAt.toIso8601String(),
//         "updated_at": updatedAt.toIso8601String(),
//         "package_color": packageColor,
//         "zoho_item_id": zohoItemId,
//         "is_hidden": isHidden,
//         "is_one_time_usage": isOneTimeUsage,
//         "is_installment": isInstallment,
//         "installment_amount": installmentAmount,
//     };
// }

// class Data {
//     final int id;
//     final int provinceId;
//     final String nameEn;
//     final String nameSi;
//     final String nameTa;
//     final int isActive;

//     Data({
//         this.id,
//         this.provinceId,
//         this.nameEn,
//         this.nameSi,
//         this.nameTa,
//         this.isActive,
//     });

//     factory Data.fromJson(Map<String, dynamic> json) => Data(
//         id: json["id"],
//         provinceId: json["province_id"],
//         nameEn: json["name_en"],
//         nameSi: json["name_si"],
//         nameTa: json["name_ta"],
//         isActive: json["is_active"],
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "province_id": provinceId,
//         "name_en": nameEn,
//         "name_si": nameSi,
//         "name_ta": nameTa,
//         "is_active": isActive,
//     };
// }

// class ParentComCategoryDatum {
//     final int id;
//     final int parentCompanyId;
//     final int categoryId;
//     final dynamic createdBy;
//     final DateTime createdAt;
//     final DateTime updatedAt;
//     final CategoryData categoryData;

//     ParentComCategoryDatum({
//         this.id,
//         this.parentCompanyId,
//         this.categoryId,
//         this.createdBy,
//         this.createdAt,
//         this.updatedAt,
//         this.categoryData,
//     });

//     factory ParentComCategoryDatum.fromJson(Map<String, dynamic> json) => ParentComCategoryDatum(
//         id: json["id"],
//         parentCompanyId: json["parent_company_id"],
//         categoryId: json["category_id"],
//         createdBy: json["created_by"],
//         createdAt: DateTime.parse(json["created_at"]),
//         updatedAt: DateTime.parse(json["updated_at"]),
//         categoryData: CategoryData.fromJson(json["category_data"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "parent_company_id": parentCompanyId,
//         "category_id": categoryId,
//         "created_by": createdBy,
//         "created_at": createdAt.toIso8601String(),
//         "updated_at": updatedAt.toIso8601String(),
//         "category_data": categoryData.toJson(),
//     };
// }

// class CategoryData {
//     final int id;
//     final int index;
//     final String name;
//     final dynamic description;
//     final int isActive;
//     final dynamic updatedBy;
//     final DateTime createdAt;
//     final DateTime updatedAt;
//     final String icon;
//     final String background;
//     final List<Media> media;

//     CategoryData({
//         this.id,
//         this.index,
//         this.name,
//         this.description,
//         this.isActive,
//         this.updatedBy,
//         this.createdAt,
//         this.updatedAt,
//         this.icon,
//         this.background,
//         this.media,
//     });

//     factory CategoryData.fromJson(Map<String, dynamic> json) => CategoryData(
//         id: json["id"],
//         index: json["index"],
//         name: json["name"],
//         description: json["description"],
//         isActive: json["is_active"],
//         updatedBy: json["updated_by"],
//         createdAt: DateTime.parse(json["created_at"]),
//         updatedAt: DateTime.parse(json["updated_at"]),
//         icon: json["icon"],
//         background: json["background"],
//         media: List<Media>.from(json["media"].map((x) => Media.fromJson(x))),
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "index": index,
//         "name": name,
//         "description": description,
//         "is_active": isActive,
//         "updated_by": updatedBy,
//         "created_at": createdAt.toIso8601String(),
//         "updated_at": updatedAt.toIso8601String(),
//         "icon": icon,
//         "background": background,
//         "media": List<dynamic>.from(media.map((x) => x.toJson())),
//     };
// }
