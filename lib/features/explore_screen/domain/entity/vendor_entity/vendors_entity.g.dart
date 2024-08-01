// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendors_entity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$VendorsEntityCWProxy {
  VendorsEntity status(String status);

  VendorsEntity parentCompanyData(
      List<ParentCompanyDatumEntity> parentCompanyData);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `VendorsEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// VendorsEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  VendorsEntity call({
    String? status,
    List<ParentCompanyDatumEntity>? parentCompanyData,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfVendorsEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfVendorsEntity.copyWith.fieldName(...)`
class _$VendorsEntityCWProxyImpl implements _$VendorsEntityCWProxy {
  const _$VendorsEntityCWProxyImpl(this._value);

  final VendorsEntity _value;

  @override
  VendorsEntity status(String status) => this(status: status);

  @override
  VendorsEntity parentCompanyData(
          List<ParentCompanyDatumEntity> parentCompanyData) =>
      this(parentCompanyData: parentCompanyData);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `VendorsEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// VendorsEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  VendorsEntity call({
    Object? status = const $CopyWithPlaceholder(),
    Object? parentCompanyData = const $CopyWithPlaceholder(),
  }) {
    return VendorsEntity(
      status: status == const $CopyWithPlaceholder() || status == null
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as String,
      parentCompanyData: parentCompanyData == const $CopyWithPlaceholder() ||
              parentCompanyData == null
          ? _value.parentCompanyData
          // ignore: cast_nullable_to_non_nullable
          : parentCompanyData as List<ParentCompanyDatumEntity>,
    );
  }
}

extension $VendorsEntityCopyWith on VendorsEntity {
  /// Returns a callable class that can be used as follows: `instanceOfVendorsEntity.copyWith(...)` or like so:`instanceOfVendorsEntity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$VendorsEntityCWProxy get copyWith => _$VendorsEntityCWProxyImpl(this);
}
