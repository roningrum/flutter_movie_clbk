import 'package:flutter/material.dart';
import 'package:flutter_movie_clbk/theme/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconText extends StatelessWidget {
  final String name;
  final String assetImage;

  const IconText({super.key, required this.name, required this.assetImage});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(assetImage, width: 40, height: 40),
        Text(name, style: contentTextBlack)
      ],
    );
  }
}
