import 'package:ayodhya_wad_assignment/core/errors/failures.dart';
import 'package:ayodhya_wad_assignment/features/vendor_profile_screen/domain/repository/vendor_profile_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/usecase/usecase.dart';
import '../entity/vendor_profile_entity.dart';

class VendorProfileUsecase implements UseCase<VendorProfileEntity, int> {
  final VendorProfileRepository vendorProfileRepository;

  VendorProfileUsecase({
    required this.vendorProfileRepository,
  });

  @override
  Future<Either<Failure, VendorProfileEntity>> call(int proId) async {
    return await vendorProfileRepository.getVendor(proId);
  }
}
