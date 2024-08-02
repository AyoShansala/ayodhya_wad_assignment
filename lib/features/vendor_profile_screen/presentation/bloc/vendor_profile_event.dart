part of 'vendor_profile_bloc.dart';

abstract class VendorProfileEvent extends Equatable {
  const VendorProfileEvent();
}

class GetVendorProfileDataEvent extends VendorProfileEvent {
  final bool isRefresh;
  const GetVendorProfileDataEvent({this.isRefresh = false});
  @override
  List<Object?> get props => [isRefresh];
}
