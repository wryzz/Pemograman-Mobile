import 'package:get/get.dart';
import 'package:project_uts_product/services/service.dart';

class DataController extends GetxController {
  DataService service = DataService();
  bool _isLoading = false;
  bool get isLoading => _isLoading;
  List<dynamic> _myData = [];
  List<dynamic> get myData => _myData;

  Future<void> getData() async {
    _isLoading = true;
    update();
    Response response = await service.getData();
    if (response.statusCode == 200) {
      _myData = response.body;
      print("Data ditemukan");
    } else {
      print("Data tidak ditemukan");
    }
    _isLoading = false;
    update();
  }

  Future<void> postData(String product, String productDetail, String harga,
      String stok, String pabrikan) async {
    _isLoading = true;
    update();
    Response response = await service.postData({
      "product": product,
      "productDetail": productDetail,
      "harga": harga,
      "stok": stok,
      "pabrikan": pabrikan,
    });
    if (response.statusCode == 200) {
      print("Data berhasil ditambahkan");
    } else {
      print("Data gagal ditambahkan");
    }
    _isLoading = false;
    update();
  }
}
