import "package:flutter/material.dart";
import "package:rento/helpers/sql_helper.dart";

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  void test() {
    var sqlHelper = SqlHelper();
    print(sqlHelper.db);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: test,
          child: const Text("TEST"),
        ),
      ),
    );
  }
}
