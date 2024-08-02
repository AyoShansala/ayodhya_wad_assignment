import 'package:ayodhya_wad_assignment/core/errors/failures.dart';
import 'package:ayodhya_wad_assignment/features/vendor_profile_screen/data/datasource/vendor_profile_remote_data_source.dart';

import 'package:ayodhya_wad_assignment/features/vendor_profile_screen/domain/entity/vendor_profile_entity.dart';

import 'package:dartz/dartz.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/repository/vendor_profile_repository.dart';

class VenodrProfileRepositoryImpl implements VendorProfileRepository {
  final VendorProfileRemoteDataSource vendorProfileRemoteDataSource;
  final NetworkInfo networkInfo;

  const VenodrProfileRepositoryImpl({
    required this.vendorProfileRemoteDataSource,
    required this.networkInfo,
  });
  @override
  Future<Either<Failure, VendorProfileEntity>> getVendor(int proId) async {
    if (await networkInfo.isConnectedToInternet) {
      try {
        final data = await vendorProfileRemoteDataSource.getCoupons(proId);

        return Right(data.toEntity());
      } on ServerException catch (serverException) {
        return Left(ServerFailure(message: serverException.errorMessage));
      }
    } else {
      return Left(NoConnectionFailure());
    }
  }
}
