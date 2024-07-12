import 'package:bookly/core/utils/space.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/details/presentation/views/details_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class BestSellerCard extends StatelessWidget {
  const BestSellerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => const DetailsView(),
        transition: Transition.rightToLeft
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 25.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 130,
          child: Row(
            children: [
              const BookCard(width: 80),
              const Space(20, dir: 'h'),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Harry Potter\nand the Goblet of Fire',
                        style: Styles.style22
                            .copyWith(fontWeight: FontWeight.w500, height: 1.2),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const Text('J.K. Rowling', style: Styles.greyStyle),
                      const Space(8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('19.99 \$', style: Styles.style22),
                          Row(
                            children: [
                              const Icon(
                                Icons.star_rate_rounded,
                                color: Colors.amber,
                              ),
                              const Space(dir: 'h', 4),
                              Text('4.8',
                                  style: Styles.style22.copyWith(
                                      fontWeight: FontWeight.w500,
                                      height: 1.2)),
                              const Space(dir: 'h', 4),
                              const Text('(2390)', style: Styles.greyStyle),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
