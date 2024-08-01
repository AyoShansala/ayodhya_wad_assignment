import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entity/vendor_entity/vendors_entity.dart';

abstract class VendorRepository {
  Future<Either<Failure, VendorsEntity>> getVendors();
}
