import 'dart:async';

import 'package:ayodhya_wad_assignment/features/explore_screen/presentation/bloc/explore_bloc.dart';
import 'package:ayodhya_wad_assignment/features/vendor_profile_screen/presentation/vendor_profile_screen.dart';
import 'package:ayodhya_wad_assignment/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/blocs/bloc_observer.dart';
import 'features/explore_screen/presentation/explore_coupons_vendors_screen.dart';

Future<void> main() async {
  runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      // injector
      await setupLocator();

      /// Setup global observer to monitor all blocs
      Bloc.observer = SlashBlocObserver();
      runApp(const MyApp());
    },
    (error, stack) {
      debugPrint("#1113 error $error | stack $stack");
    },
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 930),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: child,
        );
      },
      child: ExploreScreenWrapper(),
    );
  }
}
