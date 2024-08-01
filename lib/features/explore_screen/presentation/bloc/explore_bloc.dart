import 'package:ayodhya_wad_assignment/core/usecase/usecase.dart';
import 'package:ayodhya_wad_assignment/features/explore_screen/domain/usecases/coupon_usecase.dart';
import 'package:ayodhya_wad_assignment/features/explore_screen/domain/usecases/vendor_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/blocs/event_transformer.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entity/coupon_entity/coupon_data_entity.dart';
import '../../domain/entity/vendor_entity/parent_company_datum_entity.dart';

part 'explore_event.dart';
part 'explore_state.dart';

class ExploreBloc extends Bloc<ExploreEvent, ExploreState> {
  final VendorUsecase vendorUsecase;
  final CouponUseCase couponUseCase;

  ExploreBloc({required this.vendorUsecase, required this.couponUseCase}) : super(ExploreState()) {
    on<GetVendorsDataEvent>(_onGetVendorDataEvent, transformer: Transformer.throttleDroppable());
    on<GetCouponsDataEvent>(_onGetCouponDataEvent, transformer: Transformer.throttleDroppable());
  }

  Future<void> _onGetVendorDataEvent(GetVendorsDataEvent event, Emitter<ExploreState> emit) async {
    if (event.isRefresh) {
      emit(state.copyWith(
        status: ExploreStatus.loading,
      ));
    }

    final result = await vendorUsecase(NoParams());

    result.fold((failure) {
      String message = '';
      if (failure is ServerFailure) {
        message = failure.message;
      } else if (failure is NoConnectionFailure) {
        message = "Check your internet connection";
      } else {
        message = "Data fetch failed";
      }
      emit(state.copyWith(
        status: ExploreStatus.failure,
        errorMessage: message,
      ));
    }, (data) {
      emit(state.copyWith(
        status: ExploreStatus.success,
        parentCompanyData: data.parentCompanyData,
      ));
    });
  }

   Future<void> _onGetCouponDataEvent(GetCouponsDataEvent event, Emitter<ExploreState> emit) async {
    if (event.isRefresh) {
      emit(state.copyWith(
        status: ExploreStatus.loading,
      ));
    }

    final result = await couponUseCase(NoParams());

    result.fold((failure) {
      String message = '';
      if (failure is ServerFailure) {
        message = failure.message;
      } else if (failure is NoConnectionFailure) {
        message = "Check your internet connection";
      } else {
        message = "Data fetch failed";
      }
      emit(state.copyWith(
        status: ExploreStatus.failure,
        errorMessage: message,
      ));
    }, (data) {
      emit(state.copyWith(
        status: ExploreStatus.success,
        couponDataEntity: data.couponDataEntity,
      ));
    });
  }


}
