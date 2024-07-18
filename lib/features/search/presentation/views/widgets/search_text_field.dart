import 'package:bookly/features/search/presentation/view_model/search%20cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var cont = BlocProvider.of<SearchCubit>(context).controller;
    return TextField(
      autofocus: true,
      controller: cont,
      decoration: InputDecoration(
        hintText: 'Search',
        enabledBorder: borderTextField(),
        focusedBorder: borderTextField(),
        suffixIcon: IconButton(
          color: Colors.white.withOpacity(.6),
          onPressed: () {
            BlocProvider.of<SearchCubit>(context).fetchRus(word: cont.text);
          },
          icon: const Icon(FontAwesomeIcons.magnifyingGlass),
        ),
      ),
    );
  }

  OutlineInputBorder borderTextField() => OutlineInputBorder(
      borderSide: const BorderSide(color: Color.fromARGB(223, 255, 255, 255)),
      borderRadius: BorderRadius.circular(12));
}
