// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parent_company_datum_entity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ParentCompanyDatumEntityCWProxy {
  ParentCompanyDatumEntity id(int id);

  ParentCompanyDatumEntity parentCompanyId(int parentCompanyId);

  ParentCompanyDatumEntity name(String name);

  ParentCompanyDatumEntity address(String address);

  ParentCompanyDatumEntity rating(int rating);

  ParentCompanyDatumEntity description(String description);

  ParentCompanyDatumEntity profileImg(String profileImg);

  ParentCompanyDatumEntity coverImg(String coverImg);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ParentCompanyDatumEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ParentCompanyDatumEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  ParentCompanyDatumEntity call({
    int? id,
    int? parentCompanyId,
    String? name,
    String? address,
    int? rating,
    String? description,
    String? profileImg,
    String? coverImg,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfParentCompanyDatumEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfParentCompanyDatumEntity.copyWith.fieldName(...)`
class _$ParentCompanyDatumEntityCWProxyImpl
    implements _$ParentCompanyDatumEntityCWProxy {
  const _$ParentCompanyDatumEntityCWProxyImpl(this._value);

  final ParentCompanyDatumEntity _value;

  @override
  ParentCompanyDatumEntity id(int id) => this(id: id);

  @override
  ParentCompanyDatumEntity parentCompanyId(int parentCompanyId) =>
      this(parentCompanyId: parentCompanyId);

  @override
  ParentCompanyDatumEntity name(String name) => this(name: name);

  @override
  ParentCompanyDatumEntity address(String address) => this(address: address);

  @override
  ParentCompanyDatumEntity rating(int rating) => this(rating: rating);

  @override
  ParentCompanyDatumEntity description(String description) =>
      this(description: description);

  @override
  ParentCompanyDatumEntity profileImg(String profileImg) =>
      this(profileImg: profileImg);

  @override
  ParentCompanyDatumEntity coverImg(String coverImg) =>
      this(coverImg: coverImg);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ParentCompanyDatumEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ParentCompanyDatumEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  ParentCompanyDatumEntity call({
    Object? id = const $CopyWithPlaceholder(),
    Object? parentCompanyId = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? address = const $CopyWithPlaceholder(),
    Object? rating = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? profileImg = const $CopyWithPlaceholder(),
    Object? coverImg = const $CopyWithPlaceholder(),
  }) {
    return ParentCompanyDatumEntity(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      parentCompanyId: parentCompanyId == const $CopyWithPlaceholder() ||
              parentCompanyId == null
          ? _value.parentCompanyId
          // ignore: cast_nullable_to_non_nullable
          : parentCompanyId as int,
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      address: address == const $CopyWithPlaceholder() || address == null
          ? _value.address
          // ignore: cast_nullable_to_non_nullable
          : address as String,
      rating: rating == const $CopyWithPlaceholder() || rating == null
          ? _value.rating
          // ignore: cast_nullable_to_non_nullable
          : rating as int,
      description:
          description == const $CopyWithPlaceholder() || description == null
              ? _value.description
              // ignore: cast_nullable_to_non_nullable
              : description as String,
      profileImg:
          profileImg == const $CopyWithPlaceholder() || profileImg == null
              ? _value.profileImg
              // ignore: cast_nullable_to_non_nullable
              : profileImg as String,
      coverImg: coverImg == const $CopyWithPlaceholder() || coverImg == null
          ? _value.coverImg
          // ignore: cast_nullable_to_non_nullable
          : coverImg as String,
    );
  }
}

extension $ParentCompanyDatumEntityCopyWith on ParentCompanyDatumEntity {
  /// Returns a callable class that can be used as follows: `instanceOfParentCompanyDatumEntity.copyWith(...)` or like so:`instanceOfParentCompanyDatumEntity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ParentCompanyDatumEntityCWProxy get copyWith =>
      _$ParentCompanyDatumEntityCWProxyImpl(this);
}
