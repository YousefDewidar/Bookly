import 'package:bookly/features/home/presentation/views/widgets/book_list_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 24.0, right: 24.0, top: 20),
      child: Column(
        children: [
          CustomAppBar(),
          BookListView(),
        ],
      ),
    );
  }
}

