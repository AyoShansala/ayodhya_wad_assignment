import 'package:ayodhya_wad_assignment/core/errors/failures.dart';
import 'package:ayodhya_wad_assignment/core/usecase/usecase.dart';
import 'package:ayodhya_wad_assignment/features/explore_screen/domain/entity/vendor_entity/vendors_entity.dart';
import 'package:ayodhya_wad_assignment/features/explore_screen/domain/repository/vendor_repository.dart';
import 'package:dartz/dartz.dart';

class VendorUsecase implements UseCase<VendorsEntity, NoParams> {
  final VendorRepository vendorRepository;

  const VendorUsecase({required this.vendorRepository});

  @override
  Future<Either<Failure, VendorsEntity>> call(NoParams param) async {
    return await vendorRepository.getVendors();
  }
}
