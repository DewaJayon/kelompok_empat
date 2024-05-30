import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kelompok_empat/models/product.dart';
import 'package:kelompok_empat/helpers/currency_format.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    var harga = int.parse(product.harga);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        leading: BackButton(
          color: Theme.of(context).colorScheme.inversePrimary,
        ),
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none_rounded,
                color: Theme.of(context).colorScheme.inversePrimary),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2.8,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(product.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.3,
                    ),
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                product.title,
                                style: GoogleFonts.poppins(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inversePrimary,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                CurrencyFormat.convertToIdr(harga, 0),
                                style: GoogleFonts.poppins(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inversePrimary,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const Divider(
                            thickness: 0.3,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Detail Produk",
                            style: GoogleFonts.poppins(
                              color:
                                  Theme.of(context).colorScheme.inversePrimary,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            product.description,
                            style: GoogleFonts.poppins(
                              color:
                                  Theme.of(context).colorScheme.inversePrimary,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: SizedBox(
          height: 60,
          child: BottomAppBar(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            color: Theme.of(context).colorScheme.background,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.chat_bubble_text,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width / 3,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Keranjang",
                        style: GoogleFonts.poppins(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Icon(
                        CupertinoIcons.cart_fill_badge_plus,
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width / 3,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Beli Sekarang",
                        style: GoogleFonts.poppins(
                          color: Theme.of(context).colorScheme.inversePrimary,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
