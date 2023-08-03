import 'package:flutter/material.dart';
import 'package:rento/helpers/constant.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset(
              ImagePath.ROBOT_404,
              height: MediaQuery.of(context).size.height * .60,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Something Wrong",
                style: TextStyle(
                  fontSize: Style.FONT_SIZE_MASSIVE,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              child: Text(
                "App is not working properly report developer. some wrong data found here or database is crash close and reopen this app.",
                textAlign: TextAlign.center,
                style:
                    TextStyle(fontSize: Style.FONT_SIZE, color: Colors.black54),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(5),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor,
                  foregroundColor: Theme.of(context).cardColor,
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 10,
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Report Developer",
                  style: TextStyle(
                    fontSize: Style.FONT_SIZE,
                    letterSpacing: 0.8,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
