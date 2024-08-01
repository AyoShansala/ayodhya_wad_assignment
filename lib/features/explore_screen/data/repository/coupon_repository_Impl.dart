import 'package:ayodhya_wad_assignment/features/explore_screen/domain/entity/coupon_entity/coupons_entity.dart';
import 'package:dartz/dartz.dart';
import '../../../../../core/errors/exceptions.dart';
import '../../../../../core/errors/failures.dart';
import '../../../../../core/network/network_info.dart';
import '../../domain/repository/coupon_repository.dart';
import '../datasource/coupon_remote_datasource.dart';

class CouponRepositoryImpl implements CouponRepository {
  final CouponRemoteDatasource couponRemoteDatasource;
  final NetworkInfo networkInfo;

  const CouponRepositoryImpl({
    required this.couponRemoteDatasource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, CouponsEntity>> getCoupon() async {
    if (await networkInfo.isConnectedToInternet) {
      try {
        final data = await couponRemoteDatasource.getCoupons();

        return Right(data.toEntity());
      } on ServerException catch (serverException) {
        return Left(ServerFailure(message: serverException.errorMessage));
      }
    } else {
      return Left(NoConnectionFailure());
    }
  }
}
