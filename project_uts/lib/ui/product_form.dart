import 'package:flutter/material.dart';

class ProdukForm extends StatefulWidget {
  const ProdukForm({Key? key}) : super(key: key);

  @override
  _ProdukFormState createState() => _ProdukFormState();
}

class _ProdukFormState extends State<ProdukForm> {
  final _formState = GlobalKey<FormState>();
  final _kodeProdukTextboxController = TextEditingController();
  final _namaProdukTextboxController = TextEditingController();
  final _hargaProdukTextboxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Produk'),
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Form(
          key: _formState,
          child: Column(
            children: [
              SizedBox(height: 7),
              TextFormField(
                controller: _kodeProdukTextboxController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Kode Produk',
                ),
                validator: (value) {
                  if (value == '') {
                    return 'Kode produk tidak boleh kosong';
                  }
                  return null;
                },
              ),
              SizedBox(height: 7),
              TextFormField(
                controller: _namaProdukTextboxController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nama Produk',
                ),
                validator: (value) {
                  if (value == '') {
                    return 'Nama produk tidak boleh kosong';
                  }
                  return null;
                },
              ),
              SizedBox(height: 7),
              TextFormField(
                controller: _hargaProdukTextboxController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Harga Produk',
                ),
                validator: (value) {
                  if (value == '') {
                    return 'Harga produk tidak boleh kosong';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formState.currentState!.validate()) {
                      _formState.currentState!.save();

                      String kodeProduk = _kodeProdukTextboxController.text;
                      String namaProduk = _namaProdukTextboxController.text;
                      String hargaProduk = _hargaProdukTextboxController.text;

                      // Lakukan apa pun yang Anda inginkan dengan nilai-nilai ini,
                      // seperti menyimpannya ke database atau menampilkan pesan konfirmasi

                      // Contoh: Menampilkan pesan konfirmasi
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Data Berhasil Disimpan !'),
                            content: Container(
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Detail Produk'),
                                  SizedBox(height: 10),
                                  Text(
                                    'Kode Produk: $kodeProduk\n'
                                    'Nama Produk: $namaProduk\n'
                                    'Harga Produk: $hargaProduk',
                                  ),
                                ],
                              ),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('OK'),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  child: Text('Simpan'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.hovered)) {
                          return Color.fromARGB(255, 13, 65, 118);
                        }
                        return Colors.blue;
                      },
                    ),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Keluar'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.hovered)) {
                          return Color.fromARGB(255, 13, 65, 118);
                        }
                        return Colors.blue;
                      },
                    ),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
