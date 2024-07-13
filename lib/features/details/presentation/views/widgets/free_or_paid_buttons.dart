import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class FreeOrPaidButtons extends StatelessWidget {
  const FreeOrPaidButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            width: MediaQuery.of(context).size.width / 2 - 38,
            height: 50,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                topLeft: Radius.circular(16),
              ),
            ),
            child: Center(
              child: Text(
                '19.99 \$',
                style: Styles.style22.copyWith(color: Colors.black,fontWeight: FontWeight.w900),
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: MediaQuery.of(context).size.width / 2 - 38,
            height: 50,
            decoration: const BoxDecoration(
              color: Color(0xffEF8262),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Center(
              child: Text(
                'Free preview',
                style: Styles.style22.copyWith(fontSize: 17),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
