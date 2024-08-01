import 'package:ayodhya_wad_assignment/core/errors/failures.dart';
import 'package:ayodhya_wad_assignment/features/explore_screen/data/datasource/vendor_remote_data_source.dart';
import 'package:ayodhya_wad_assignment/features/explore_screen/domain/entity/vendor_entity/vendors_entity.dart';
import 'package:ayodhya_wad_assignment/features/explore_screen/domain/repository/vendor_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/network/network_info.dart';

class VendorRepositoryImpl implements VendorRepository {
  final NetworkInfo networkInfo;
  final VendorRemoteDataSource vendorRemoteDataSource;

  const VendorRepositoryImpl({required this.networkInfo, required this.vendorRemoteDataSource});
  @override
  Future<Either<Failure, VendorsEntity>> getVendors() async {
    if (await networkInfo.isConnectedToInternet) {
      try {
        final data = await vendorRemoteDataSource.getVendors();

        return Right(data.toEntity());
      } on ServerException catch (serverException) {
      
        return Left(ServerFailure(message: serverException.errorMessage));
      }
    } else {
      return Left(NoConnectionFailure());
    }
  }
}
