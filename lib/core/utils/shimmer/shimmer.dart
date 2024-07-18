import 'package:bookly/core/utils/shimmer/shimmer_card.dart';
import 'package:bookly/core/utils/space.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerFeatureList extends StatelessWidget {
  const ShimmerFeatureList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * .3,
        child: Shimmer.fromColors(
          baseColor: const Color.fromARGB(236, 217, 217, 217),
          highlightColor: Colors.white,
          child: ListView.builder(
              padding: const EdgeInsets.only(top: 20),
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(right: 14.0),
                    child: ShimmerCard(
                        width: 150,
                        height: MediaQuery.of(context).size.height * .3),
                  )),
        ));
  }
}

class ShimmerAlsoList extends StatelessWidget {
  const ShimmerAlsoList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * .18,
        child: Shimmer.fromColors(
          baseColor: const Color.fromARGB(236, 217, 217, 217),
          highlightColor: Colors.white,
          child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: ShimmerCard(
                        width: 120,
                        height: MediaQuery.of(context).size.height * .18),
                  )),
        ));
  }
}

class ShimmerNewestList extends StatelessWidget {
  const ShimmerNewestList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Shimmer.fromColors(
            baseColor: const Color.fromARGB(236, 217, 217, 217),
            highlightColor: Colors.white,
            child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) => const NewestCardShimmer())));
  }
}

class NewestCardShimmer extends StatelessWidget {
  const NewestCardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: SizedBox(
        height: 130,
        child: Row(
          children: [
            // image
            ShimmerCard(
              width: 90,
              height: MediaQuery.of(context).size.height * .3,
            ),
            const Space(20, dir: 'h'),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ShimmerCard(
                      width: 300,
                      height: 10,
                    ),
                    Space(15),
                    ShimmerCard(
                      width: 100,
                      height: 10,
                    ),
                    Space(15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ShimmerCard(
                          width: 50,
                          height: 15,
                        ),
                        ShimmerCard(
                          width: 50,
                          height: 15,
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
    );
  }
}
