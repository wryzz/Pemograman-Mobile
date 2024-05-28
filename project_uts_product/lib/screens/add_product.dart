import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:project_uts_product/screens/all_product.dart';
import 'package:project_uts_product/screens/data_controller.dart';
import 'package:project_uts_product/utils/app_colors.dart';
import 'package:project_uts_product/widgets/button_widget.dart';
import 'package:project_uts_product/widgets/textfield.dart';

class AddProduct extends StatelessWidget {
  const AddProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController kodeController = TextEditingController();
    TextEditingController namaController = TextEditingController();
    TextEditingController hargaController = TextEditingController();
    TextEditingController stokController = TextEditingController();
    TextEditingController pabrikanController = TextEditingController();

    bool _datavalidation() {
      if (kodeController.text.trim() == "") {
        Get.snackbar("Error", "Kode Barcode tidak boleh kosong");
        return false;
      } else if (namaController.text.trim() == '') {
        Get.snackbar("Error", "Nama tidak boleh kosong");
        return false;
      } else if (stokController.text.trim() == '') {
        Get.snackbar("Error", "Stok tidak boleh kosong");
        return false;
      } else if (pabrikanController.text.trim() == '') {
        Get.snackbar("Error", "Pabrikan tidak boleh kosong");
        return false;
      }

      return true;
    }

    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/addtask.jpg"),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100),
            IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back,
                color: AppColors.secondaryColor,
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  SizedBox(height: 60),
                  TextFieldWidget(
                    textController: kodeController,
                    hintText: "No Barcode Produk",
                    borderRadius: 30,
                  ),
                  SizedBox(height: 20),
                  TextFieldWidget(
                    textController: namaController,
                    hintText: "Nama Produk",
                    borderRadius: 15,
                  ),
                  SizedBox(height: 20),
                  TextFieldWidget(
                    textController: hargaController,
                    hintText: "Harga Produk",
                    borderRadius: 15,
                  ),
                  SizedBox(height: 20),
                  TextFieldWidget(
                    textController: stokController,
                    hintText: "Stok Produk",
                    borderRadius: 15,
                  ),
                  SizedBox(height: 20),
                  TextFieldWidget(
                    textController: pabrikanController,
                    hintText: "Pabrikan",
                    borderRadius: 15,
                    maxLines: 2,
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      if (_datavalidation()) {
                        Get.find<DataController>().postData(
                            kodeController.text.trim(),
                            namaController.text.trim(),
                            hargaController.text.trim(),
                            stokController.text.trim(),
                            pabrikanController.text.trim());
                        Get.to(
                          () => AllProduct(),
                          transition: Transition.circularReveal,
                        );
                      }
                    },
                    child: ButtonWidget(
                      backgroundcolor: AppColors.mainColor,
                      text: "Add",
                      textColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
