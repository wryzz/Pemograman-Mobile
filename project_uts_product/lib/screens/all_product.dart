import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_uts_product/utils/app_colors.dart';
import 'package:project_uts_product/widgets/button_widget.dart';
import 'package:project_uts_product/widgets/product_widget.dart';

class AllProduct extends StatelessWidget {
  const AllProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> myData = ["102", "Buku", "10.000", "10", "Buku Dunia"];
    final leftEditIcon = Container(
      margin: const EdgeInsets.only(bottom: 10),
      color: const Color(0xFF2e3253).withOpacity(0.5),
      child: const Icon(Icons.edit, color: Colors.white),
    );
    final rightDeleteIcon = Container(
      margin: const EdgeInsets.only(bottom: 10),
      color: const Color.fromARGB(255, 11, 0, 0),
      child: const Icon(Icons.delete, color: Colors.white),
      alignment: Alignment.centerRight,
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, top: 60),
            alignment: Alignment.topLeft,
            child: InkWell(
              onTap: () {
                Get.back();
              },
              child: Icon(
                Icons.arrow_back,
                color: AppColors.secondaryColor,
              ),
            ),
            width: double.maxFinite,
            height: MediaQuery.of(context).size.height / 3.2,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("/assets/addtask.jpg"),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Icon(
                  Icons.home,
                  color: AppColors.secondaryColor,
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 20,
                  ),
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.5),
                    color: Colors.black54,
                  ),
                ),
                Expanded(child: Container()),
                Icon(
                  Icons.calendar_month_sharp,
                  color: AppColors.secondaryColor,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "2",
                  style:
                      TextStyle(fontSize: 20, color: AppColors.secondaryColor),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: myData.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  background: leftEditIcon,
                  secondaryBackground: rightDeleteIcon,
                  onDismissed: (DismissDirection direction) {
                    print("after dismiss");
                  },
                  confirmDismiss: (DismissDirection direction) async {
                    if (direction == DismissDirection.startToEnd) {
                      showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        barrierColor: Colors.transparent,
                        context: context,
                        builder: (_) {
                          return Container(
                            height: 550,
                            decoration: BoxDecoration(
                              color: const Color(0xFF2e3253).withOpacity(0.4),
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(20),
                                topLeft: Radius.circular(20),
                              ),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ButtonWidget(
                                    backgroundcolor: AppColors.mainColor,
                                    text: "View",
                                    textColor: Colors.white,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  ButtonWidget(
                                    backgroundcolor: AppColors.mainColor,
                                    text: "Edit",
                                    textColor: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                      return false;
                    } else {
                      return Future.delayed(Duration(seconds: 1),
                          () => direction == DismissDirection.startToEnd);
                    }
                  },
                  key: ObjectKey(index),
                  child: Container(
                    margin:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                    child: ProductWidget(
                      text: myData[index],
                      color: Colors.blueGrey,
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
