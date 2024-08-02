import 'package:ayodhya_wad_assignment/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

import '../entity/vendor_profile_entity.dart';

abstract class VendorProfileRepository {
  Future<Either<Failure, VendorProfileEntity>> getVendor();
}
