import 'package:ayodhya_wad_assignment/core/usecase/usecase.dart';
import 'package:ayodhya_wad_assignment/features/explore_screen/presentation/bloc/explore_bloc.dart';
import 'package:ayodhya_wad_assignment/features/vendor_profile_screen/domain/usecase/vendor_profile_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/blocs/event_transformer.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entity/company_data_entity.dart';
import '../../domain/entity/vendor_profile_entity.dart';

part 'vendor_profile_event.dart';
part 'vendor_profile_state.dart';

class VendorProfileBloc extends Bloc<VendorProfileEvent, VendorProfileState> {
  
  final VendorProfileUsecase vendorProfileUsecase;

  VendorProfileBloc({required this.vendorProfileUsecase}) : super(VendorProfileState()) {
    on<GetVendorProfileDataEvent>(_onGetVendorProfileDataEvent, transformer: Transformer.throttleDroppable());
  }

  Future<void> _onGetVendorProfileDataEvent(GetVendorProfileDataEvent event, Emitter<VendorProfileState> emit) async {
    if (event.isRefresh) {
      emit(state.copyWith(
        status: VendorProfileStatus.loading,
      ));
    }

    final result = await vendorProfileUsecase(NoParams());

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
        status: VendorProfileStatus.failure,
        errorMessage: message,
      ));
    }, (data) {
      emit(state.copyWith(
        status: VendorProfileStatus.success,
        vendorProfileEntity: data.companyData,
      ));
    });
  }
}
