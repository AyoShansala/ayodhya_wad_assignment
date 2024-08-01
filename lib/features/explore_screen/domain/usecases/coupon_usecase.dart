import 'package:dartz/dartz.dart';
import '../../../../../core/errors/failures.dart';
import '../../../../../core/usecase/usecase.dart';
import '../entity/coupon_entity/coupons_entity.dart';
import '../repository/coupon_repository.dart';


class CouponUseCase implements UseCase<CouponsEntity, NoParams> {
  final CouponRepository couponRepository;

  CouponUseCase({
    required this.couponRepository,
  });

  @override
  Future<Either<Failure, CouponsEntity>> call(NoParams noParams) async {
    return await couponRepository.getCoupon();
  }
}