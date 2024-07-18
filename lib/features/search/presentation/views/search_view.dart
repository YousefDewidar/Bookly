import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/search/data/repo/search_repo_imp.dart';
import 'package:bookly/features/search/presentation/view_model/search%20cubit/search_cubit.dart';
import 'package:bookly/features/search/presentation/views/widgets/search_view_body.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: BlocProvider(
      create: (context) => SearchCubit(SearchRepoImp(ApiService(Dio()))),
      child: const SearchViewBody(),
    )));
  }
}
