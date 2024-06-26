import 'package:flutter/material.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:kelompok_empat/models/product.dart';
import 'package:kelompok_empat/widgets/custom_text_field.dart';
import 'package:kelompok_empat/widgets/tombol.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  void _showSnackbar(String title, String message, ContentType contentType) {
    final snackBar = SnackBar(
      /// need to set following properties for best effect of awesome_snackbar_content
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: title,
        message: message,

        /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
        contentType: contentType,
      ),
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _deskripsiController = TextEditingController();
  final TextEditingController _hargaController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  void _createProduct() async {
    if (_formKey.currentState!.validate()) {
      final title = _namaController.text;
      final description = _deskripsiController.text;
      final harga = _hargaController.text;
      final product = await Product.postData(title, description, harga);
      if (product) {
        _showSnackbar(
          "Success",
          "Produk Berhasil ditambahkan",
          ContentType.success,
        );
        _namaController.clear();
        _deskripsiController.clear();
        _hargaController.clear();
      } else {
        _showSnackbar("Error", "Gagal menambahkan produk", ContentType.failure);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Add Car List',
          style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomTextField(
                controller: _namaController,
                label: "Car Name",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Input Car Name';
                  }
                  return null;
                },
              ),
              CustomTextField(
                controller: _deskripsiController,
                label: "Description",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Input Description';
                  }
                  return null;
                },
              ),
              CustomTextField(
                controller: _hargaController,
                label: "Price",
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Input Price';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              Tombol(
                onTap: () {
                  _createProduct();
                },
                text: "Add",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
