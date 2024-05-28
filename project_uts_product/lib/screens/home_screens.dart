import 'package:flutter/material.dart';
import 'package:project_uts_product/screens/add_product.dart';
import 'package:project_uts_product/screens/all_product.dart';
import 'package:project_uts_product/utils/app_colors.dart';
import 'package:project_uts_product/widgets/button_widget.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(
                      text: "MY SHOP",
                      style: TextStyle(
                          color: AppColors.mainColor,
                          fontSize: 60,
                          fontWeight: FontWeight.bold),
                      children: [
                    TextSpan(
                        text: "\nMy Shope Name is Irfan Nur Sofiyanto",
                        style: TextStyle(
                            color: AppColors.smallTextColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold))
                  ])),
              SizedBox(
                height: MediaQuery.of(context).size.height / 2.5,
              ),
              InkWell(
                onTap: () {
                  Get.to(() => AddProduct(),
                      transition: Transition.zoom,
                      duration: Duration(milliseconds: 500));
                },
                child: ButtonWidget(
                    backgroundcolor: AppColors.mainColor,
                    text: "Add Product",
                    textColor: Colors.white),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Get.to(() => AllProduct(),
                      transition: Transition.fade,
                      duration: Duration(seconds: 1));
                },
                child: ButtonWidget(
                    backgroundcolor: Colors.white,
                    text: "View Detail Product",
                    textColor: AppColors.smallTextColor),
              ),
            ],
          ),
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/utama.jpg'),
            ),
          )),
    );
  }
}
