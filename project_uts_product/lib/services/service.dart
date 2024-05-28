import 'package:get/get.dart';

class DataService extends GetConnect implements GetxService {
  Future<Response> getData() async {
    Response response = await get("http://localhost:8008/getproducts",
        headers: {'Content-Type': 'application/json; charset=utf-8'});
    return response;
  }

  Future<Response> postData(dynamic body) async {
    Response response = await post("http://localhost:8008/create", body,
        headers: {'Content-Type': 'application/json; charset=utf-8'});
    return response;
  }
}
