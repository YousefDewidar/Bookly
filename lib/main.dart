import 'package:bookly/constant.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/repos/home_repo_implement.dart';
import 'package:bookly/features/home/presentation/view%20model/featured%20book%20cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/view%20model/newest%20books%20cubit/newest_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const Bookly(),
  ));
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeaturedBooksCubit(HomeRepoImplement(ApiService(Dio())))
                ..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) =>
              NewestBooksCubit(HomeRepoImplement(ApiService(Dio())))
                ..fetchNewestBooks(),
        ),
      ],
      child: GetMaterialApp(
        theme: ThemeData(
            scaffoldBackgroundColor: kprimaryColor,
            brightness: Brightness.dark,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        debugShowCheckedModeBanner: false,
        // home: const SplashView(),
        home: const HomeView(),
      ),
    );
  }
}
