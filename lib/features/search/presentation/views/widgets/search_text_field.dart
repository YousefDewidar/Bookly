import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        enabledBorder: borderTextField(),
        focusedBorder: borderTextField(),
        suffixIcon: IconButton(
          color: Colors.white.withOpacity(.6),
          onPressed: () {},
          icon: const Icon(FontAwesomeIcons.magnifyingGlass),
        ),
      ),
    );
  }

  OutlineInputBorder borderTextField() => OutlineInputBorder(
      borderSide: const BorderSide(color: Color.fromARGB(223, 255, 255, 255)),
      borderRadius: BorderRadius.circular(12));
}
