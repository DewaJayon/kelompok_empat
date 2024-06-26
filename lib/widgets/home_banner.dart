import 'package:flutter/material.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
    required this.assetImages,
  });

  final String assetImages;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.only(left: 20),
        width: 379,
        height: 154,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(assetImages),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
