import 'package:flutter/material.dart';

class AlsoLikeListView extends StatelessWidget {
  const AlsoLikeListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .18,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        clipBehavior: Clip.none,
        itemCount: 8,
        itemBuilder: (context, index) {
          return const Padding(
              padding: EdgeInsets.only(right: 6), child: SizedBox()
              //  BookCard(
              //     marginR: 14.0,
              //     width: 150,
              //     book:state.books[index],
              //   ),

              );
        },
      ),
    );
  }
}
