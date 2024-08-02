part of 'vendor_profile_bloc.dart';

abstract class VendorProfileEvent extends Equatable {
  const VendorProfileEvent();
}

class GetVendorProfileDataEvent extends VendorProfileEvent {
  final int proId;
  final bool isRefresh;
  const GetVendorProfileDataEvent({required this.proId, this.isRefresh = false});
  @override
  List<Object?> get props => [proId,isRefresh];
}
