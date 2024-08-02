// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_profile_entity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$VendorProfileEntityCWProxy {
  VendorProfileEntity status(String status);

  VendorProfileEntity companyData(CompanyDataEntity companyData);

  VendorProfileEntity subscribedPackage(dynamic subscribedPackage);

  VendorProfileEntity slashedCoupons(List<dynamic> slashedCoupons);

  VendorProfileEntity userSpecificCoupons(List<dynamic> userSpecificCoupons);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `VendorProfileEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// VendorProfileEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  VendorProfileEntity call({
    String? status,
    CompanyDataEntity? companyData,
    dynamic subscribedPackage,
    List<dynamic>? slashedCoupons,
    List<dynamic>? userSpecificCoupons,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfVendorProfileEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfVendorProfileEntity.copyWith.fieldName(...)`
class _$VendorProfileEntityCWProxyImpl implements _$VendorProfileEntityCWProxy {
  const _$VendorProfileEntityCWProxyImpl(this._value);

  final VendorProfileEntity _value;

  @override
  VendorProfileEntity status(String status) => this(status: status);

  @override
  VendorProfileEntity companyData(CompanyDataEntity companyData) =>
      this(companyData: companyData);

  @override
  VendorProfileEntity subscribedPackage(dynamic subscribedPackage) =>
      this(subscribedPackage: subscribedPackage);

  @override
  VendorProfileEntity slashedCoupons(List<dynamic> slashedCoupons) =>
      this(slashedCoupons: slashedCoupons);

  @override
  VendorProfileEntity userSpecificCoupons(List<dynamic> userSpecificCoupons) =>
      this(userSpecificCoupons: userSpecificCoupons);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `VendorProfileEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// VendorProfileEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  VendorProfileEntity call({
    Object? status = const $CopyWithPlaceholder(),
    Object? companyData = const $CopyWithPlaceholder(),
    Object? subscribedPackage = const $CopyWithPlaceholder(),
    Object? slashedCoupons = const $CopyWithPlaceholder(),
    Object? userSpecificCoupons = const $CopyWithPlaceholder(),
  }) {
    return VendorProfileEntity(
      status: status == const $CopyWithPlaceholder() || status == null
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as String,
      companyData:
          companyData == const $CopyWithPlaceholder() || companyData == null
              ? _value.companyData
              // ignore: cast_nullable_to_non_nullable
              : companyData as CompanyDataEntity,
      subscribedPackage: subscribedPackage == const $CopyWithPlaceholder() ||
              subscribedPackage == null
          ? _value.subscribedPackage
          // ignore: cast_nullable_to_non_nullable
          : subscribedPackage as dynamic,
      slashedCoupons: slashedCoupons == const $CopyWithPlaceholder() ||
              slashedCoupons == null
          ? _value.slashedCoupons
          // ignore: cast_nullable_to_non_nullable
          : slashedCoupons as List<dynamic>,
      userSpecificCoupons:
          userSpecificCoupons == const $CopyWithPlaceholder() ||
                  userSpecificCoupons == null
              ? _value.userSpecificCoupons
              // ignore: cast_nullable_to_non_nullable
              : userSpecificCoupons as List<dynamic>,
    );
  }
}

extension $VendorProfileEntityCopyWith on VendorProfileEntity {
  /// Returns a callable class that can be used as follows: `instanceOfVendorProfileEntity.copyWith(...)` or like so:`instanceOfVendorProfileEntity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$VendorProfileEntityCWProxy get copyWith =>
      _$VendorProfileEntityCWProxyImpl(this);
}
