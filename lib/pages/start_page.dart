import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kelompok_empat/pages/main_page.dart';
import 'package:kelompok_empat/widgets/tombol.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/splash.png',
                  width: 250,
                  height: 250,
                ),
                const SizedBox(height: 20),
                Text(
                  "Kelompok Empat",
                  style: GoogleFonts.roboto(
                    fontSize: 30,
                    fontWeight: FontWeight.values[4],
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20),
                Tombol(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MainPage(),
                      ),
                    );
                  },
                  text: "Mulai",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
