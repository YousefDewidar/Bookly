import 'package:bookly/core/utils/constant.dart';
import 'package:bookly/core/utils/functions/di.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/data/repos/home_repo_implement.dart';
import 'package:bookly/features/home/domain/use_cases/featch_featured_books_use_case.dart';
import 'package:bookly/features/home/domain/use_cases/featch_newest_books_use_case.dart';
import 'package:bookly/features/home/presentation/manager/featured%20book%20cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/manager/newest%20books%20cubit/newest_books_cubit.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  setupServiceLocator();
  Hive.registerAdapter(BookEntityAdapter());
  await Future.wait([
    Hive.openBox<BookEntity>(kFeatureBox),
    Hive.openBox<BookEntity>(kNewestBox)
  ]);
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(
            FeatchFeaturedBooksUseCase(
                homeRepo: getIt.get<HomeRepoImplement>()),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestBooksCubit(
            FeatchNewestBooksUseCase(homeRepo: getIt.get<HomeRepoImplement>()),
          )..fetchNewestBooks(),
        ),
      ],
      child: GetMaterialApp(
        theme: ThemeData(
            scaffoldBackgroundColor: kprimaryColor,
            brightness: Brightness.dark,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        debugShowCheckedModeBanner: false,
        home: const SplashView(),
      ),
    );
  }
}
