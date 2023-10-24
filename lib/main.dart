import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
import 'core/router/app_router.dart';
import 'core/router/route_paths.dart';
import 'features/language/view_model/app_language_cubit/app_language_cubit.dart';
import 'features/language/view_model/app_language_cubit/app_language_state.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider(create: (context) => IdentificationAddressCubit()),
        // BlocProvider(create: (context) => SplashCubit()),
        // BlocProvider(create: (context) => VerificationCubit()),
        // BlocProvider(create: (context) => RegisterCubit()),
        // BlocProvider(create: (context) => AddressCubit()),
        BlocProvider(create: (context) => AppLanguageCubit()..getAppLanguage()),
      ],
      child: BlocBuilder<AppLanguageCubit, AppLanguageState>(
        builder: (context, state) {
          if (state is! AppChangeLanguage) {
            return Container(color: Colors.red);
          }
          return AnnotatedRegion<SystemUiOverlayStyle>(
            value: Platform.isIOS
                ? SystemUiOverlayStyle.dark
                : const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
            ),
            child: ScreenUtilInit(
              designSize: const Size(430, 932),
              useInheritedMediaQuery: true,
              builder: (context, child) => MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'car fixing',
                theme: ThemeData(
                  appBarTheme: const AppBarTheme(
                    surfaceTintColor: Colors.transparent,
                    scrolledUnderElevation: 0,
                  ),
                  colorScheme:
                  ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                  useMaterial3: true,
                ),
                onGenerateRoute: AppRouter.onGenerateRoutes,
                initialRoute: RoutePaths.layoutPath,
                localizationsDelegates: AppLocalizations.localizationsDelegates,
                supportedLocales: AppLocalizations.supportedLocales,
                navigatorKey: navKey,
                locale: Locale(state.languageCode),
              ),
            ),
          );
        },
      ),
    );
  }
}
