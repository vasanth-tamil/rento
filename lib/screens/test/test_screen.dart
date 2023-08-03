import "package:flutter/material.dart";
import 'package:get/get.dart';
import "package:rento/controllers/test_controller.dart";
import "package:rento/helpers/sql_helper.dart";
import "package:rento/models/test_model.dart";

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  late final TestController testController;
  late SqlHelper sqlHelper;

  @override
  void initState() {
    testController = Get.put(TestController());
    sqlHelper = SqlHelper();
    super.initState();
  }

  // void test() {
  //   // Map<String, dynamic> testData = Test(name: "Insert testing 001").toMap();
  //   // sqlHelper.insert("test", testData);
  // }

  void fetch() async {
    print(testController.data);
  }

  void delete() async {
    await sqlHelper.delete("test", "deac4afd2b9948d1873a7b8862590823");
  }

  void fetchOne() async {
    var data = await sqlHelper.fetch("test");
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                foregroundColor: Theme.of(context).cardColor,
              ),
              onPressed: testController.createData,
              child: const Text("INSERT"),
            ),
            const SizedBox(width: 10),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                foregroundColor: Theme.of(context).cardColor,
              ),
              onPressed: () =>
                  testController.fetchOne('f3917d8478554d008ccbe3c656a6d52a'),
              child: const Text("FETCH ONE"),
            ),
            const SizedBox(width: 10),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.black87,
                foregroundColor: Theme.of(context).cardColor,
              ),
              onPressed: testController.fetch,
              child: Obx(() => Text("FETCH ${testController.data.length}")),
            ),
            const SizedBox(width: 10),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.black87,
                foregroundColor: Theme.of(context).cardColor,
              ),
              onPressed: () {
                String id = "f97567b3cd964930842629a37d9c9c74";
                testController.fetchOne(id);
                Test test = testController.data.first;
                test.name = "Mokka Rasu";
                testController.updateData(
                  id,
                  test.toMap(),
                );
              },
              child: const Text("UPDATE"),
            ),
            const SizedBox(width: 10),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.orangeAccent.shade200,
                foregroundColor: Colors.black87,
              ),
              onPressed: () =>
                  testController.delete("a40dfb34cf8b4fe8b612d1dda116b3b2"),
              child: const Text("DELETE"),
            ),
            const SizedBox(width: 10),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.error,
                foregroundColor: Theme.of(context).cardColor,
              ),
              onPressed: sqlHelper.deleteDB,
              child: const Text("DELETE DB"),
            ),
            const SizedBox(width: 10),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.error,
                foregroundColor: Theme.of(context).cardColor,
              ),
              onPressed: sqlHelper.close,
              child: const Text("CLOSE DB"),
            ),
          ],
        ),
      ),
    );
  }
}
