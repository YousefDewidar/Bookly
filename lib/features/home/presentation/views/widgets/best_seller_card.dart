import 'package:bookly/core/utils/space.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_card.dart';
import 'package:flutter/material.dart';

class BestSellerCard extends StatelessWidget {
  const BestSellerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 130,
        child: const Row(
          children: [
            BookCard(width: 80),
            Space(20, dir: 'h'),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text('Harry Potter\nand the Goblet of Fire',
                        style: Styles.largeStyle,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        ),
                    Text('J.K. Rowling', style: Styles.greyStyle),
                    Space(8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('19.99 \$', style: Styles.boldStyle),
                        Row(
                          children: [
                            Icon(
                              Icons.star_rate_rounded,
                              color: Colors.amber,
                            ),
                            Space(dir: 'h', 4),
                            Text('4.8', style: Styles.largeStyle),
                            Space(dir: 'h', 4),
                            Text('(2390)', style: Styles.greyStyle),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
