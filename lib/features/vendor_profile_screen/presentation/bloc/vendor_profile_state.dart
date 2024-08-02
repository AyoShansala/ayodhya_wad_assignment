part of 'vendor_profile_bloc.dart';

enum VendorProfileStatus { initial, loading, success, failure }

class VendorProfileState extends Equatable {
  final VendorProfileStatus status;
  final String? errorMessage;
  final CompanyDataEntity? vendorProfileEntity;

  const VendorProfileState({
    this.status = VendorProfileStatus.initial,
    this.errorMessage,
    this.vendorProfileEntity,
  });

  @override
  List<Object?> get props => [status, errorMessage, vendorProfileEntity];

  VendorProfileState copyWith({
    VendorProfileStatus? status,
    String? errorMessage,
    CompanyDataEntity? vendorProfileEntity,
  }) {
    return VendorProfileState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      vendorProfileEntity: vendorProfileEntity ?? vendorProfileEntity,
    );
  }
}
