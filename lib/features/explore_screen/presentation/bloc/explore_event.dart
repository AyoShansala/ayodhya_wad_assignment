part of 'explore_bloc.dart';

abstract class ExploreEvent extends Equatable {
  const ExploreEvent();
}

class GetVendorsDataEvent extends ExploreEvent {
  final bool isRefresh;

  const GetVendorsDataEvent({this.isRefresh = false});

  @override
  List<Object> get props => [isRefresh];
}

class GetCouponsDataEvent extends ExploreEvent {
  final bool isRefresh;

  const GetCouponsDataEvent({this.isRefresh = false});

  @override
  List<Object> get props => [isRefresh];
}
