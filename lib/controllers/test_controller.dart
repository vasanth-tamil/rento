import 'package:get/get.dart';
import 'package:rento/helpers/sql_helper.dart';
import 'package:rento/models/test_model.dart';

class TestController extends GetxController {
  final sqlHelper = SqlHelper();
  final tableName = "test";

  final RxList _data = [].obs;
  RxList get data => _data;

  createData() async {
    final testData = Test(name: "controller setup");
    await sqlHelper.insert(tableName, testData.toMap());
  }

  updateData(String id, Map<String, dynamic> data) async {
    final testData = await sqlHelper.update(tableName, data);
    print("[DEBUG] $id, $data, $testData");
  }

  fetch() async {
    final testData = await sqlHelper.fetch(tableName);
    _data.clear();
    update();

    for (var data in testData) {
      print(data);
      _data.add(Test.fromMap(data));
    }
    update();
  }

  fetchOne(String id) async {
    final testData = await sqlHelper.fetchOne(tableName, id);
    _data.clear();
    _data.add(Test.fromMap(testData));
    update();
  }

  delete(String id) async => await sqlHelper.delete(tableName, id);
}
