import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tombol extends StatelessWidget {
  const Tombol({
    super.key,
    required this.onTap,
    required this.text,
  });

  final Function() onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        width: 200,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Theme.of(context).colorScheme.primary,
            border: Border.all(color: Colors.black)),
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.poppins(
              color: Theme.of(context).colorScheme.inversePrimary,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
