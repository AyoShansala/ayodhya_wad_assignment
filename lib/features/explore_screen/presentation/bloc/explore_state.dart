part of 'explore_bloc.dart';

enum ExploreStatus { initial, loading, success, failure }

class ExploreState extends Equatable {
  final ExploreStatus status;
  final String? errorMessage;
  final List<ParentCompanyDatumEntity>? parentCompanyData;
  final List<CouponDataEntity>? couponDataEntity;

  const ExploreState({
    this.status = ExploreStatus.initial,
    this.errorMessage,
    this.parentCompanyData,
    this.couponDataEntity,
  });

  @override
  List<Object?> get props => [status, errorMessage, parentCompanyData,couponDataEntity];

  ExploreState copyWith({
    final ExploreStatus? status,
    final String? errorMessage,
    final List<ParentCompanyDatumEntity>? parentCompanyData,
    final List<CouponDataEntity>? couponDataEntity,
  }) {
    return ExploreState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      parentCompanyData: parentCompanyData ?? this.parentCompanyData,
      couponDataEntity: couponDataEntity ?? this.couponDataEntity,
    );
  }
}
