import 'package:ayodhya_wad_assignment/features/explore_screen/data/datasource/coupon_remote_datasource.dart';
import 'package:ayodhya_wad_assignment/features/explore_screen/data/datasource/vendor_remote_data_source.dart';
import 'package:ayodhya_wad_assignment/features/explore_screen/data/repository/vendor_repository_impl.dart';
import 'package:ayodhya_wad_assignment/features/explore_screen/domain/repository/coupon_repository.dart';
import 'package:ayodhya_wad_assignment/features/explore_screen/domain/repository/vendor_repository.dart';
import 'package:ayodhya_wad_assignment/features/explore_screen/domain/usecases/coupon_usecase.dart';
import 'package:ayodhya_wad_assignment/features/explore_screen/domain/usecases/vendor_usecase.dart';
import 'package:ayodhya_wad_assignment/features/explore_screen/presentation/bloc/explore_bloc.dart';
import 'package:ayodhya_wad_assignment/features/vendor_profile_screen/data/datasource/vendor_profile_remote_data_source.dart';
import 'package:ayodhya_wad_assignment/features/vendor_profile_screen/data/repository/vendor_profile_repository_impl.dart';
import 'package:ayodhya_wad_assignment/features/vendor_profile_screen/domain/repository/vendor_profile_repository.dart';
import 'package:ayodhya_wad_assignment/features/vendor_profile_screen/domain/usecase/vendor_profile_usecase.dart';
import 'package:ayodhya_wad_assignment/features/vendor_profile_screen/presentation/bloc/vendor_profile_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'core/network/dio_client.dart';
import 'core/network/network_info.dart';
import 'features/explore_screen/data/repository/coupon_repository_Impl.dart';

final sl = GetIt.instance;

Future<void> setupLocator() async {
  /// Feature: Explore vendors and cpupons
  // bloc
  sl.registerFactory<ExploreBloc>(() => ExploreBloc(vendorUsecase: sl(), couponUseCase: sl()));
  // usecase
  sl.registerLazySingleton<VendorUsecase>(() => VendorUsecase(vendorRepository: sl()));
  sl.registerLazySingleton<CouponUseCase>(() => CouponUseCase(couponRepository: sl()));
  // repository
  sl.registerLazySingleton<VendorRepository>(() => VendorRepositoryImpl(networkInfo: sl(), vendorRemoteDataSource: sl()));
  sl.registerLazySingleton<CouponRepository>(() => CouponRepositoryImpl(networkInfo: sl(), couponRemoteDatasource: sl()));
  // data sources
  sl.registerLazySingleton<VendorRemoteDataSource>(() => VendorRemoteDataSourceImpl(dioClient: sl()));
  sl.registerLazySingleton<CouponRemoteDatasource>(() => CouponRemoteDataSourceImpl(dioClient: sl()));

  /// Feature: Vendor prodfile screen
  // bloc
  sl.registerFactory<VendorProfileBloc>(() => VendorProfileBloc(vendorProfileUsecase: sl()));
  // usecase
  sl.registerLazySingleton<VendorProfileUsecase>(() => VendorProfileUsecase(vendorProfileRepository: sl()));
  // repository
  sl.registerLazySingleton<VendorProfileRepository>(() => VenodrProfileRepositoryImpl(vendorProfileRemoteDataSource: sl(), networkInfo: sl()));
  // data sources
  sl.registerLazySingleton<VendorProfileRemoteDataSource>(() => VendorProfileRemoteDataSourceImpl(dioClient: sl()));

  /// Network
  sl.registerFactory<Dio>(() => Dio());
  sl.registerFactory<DioClient>(() => DioClient(public: sl<Dio>(), auth: sl<Dio>()));
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(connectionChecker: sl()));
  sl.registerLazySingleton<InternetConnectionChecker>(() => InternetConnectionChecker());
}
