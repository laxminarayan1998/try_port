import 'package:flutter/material.dart';

import '../constants.dart';

class IntroLogo extends StatelessWidget {
  final Animation? iconColorTween;
  IntroLogo({
    Key? key,
    this.iconColorTween,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Text.rich(
        TextSpan(
          text: 'nryn',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 42,
            fontWeight: FontWeight.bold,
            color: iconColorTween!.value,
          ),
          children: <TextSpan>[
            TextSpan(
              text: '.',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
