import 'package:flutter/material.dart';
import 'package:rento/screens/common/custom_card_button.dart';

class CreateSheet extends StatelessWidget {
  const CreateSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Theme.of(context).cardColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              CustomCardButton(
                onPressed: () => print("create new"),
                title: "Create new",
                description: "Create new rooms",
              ),
              const SizedBox(width: 20),
              CustomCardButton(
                onPressed: () => print("view summery"),
                title: "Summery",
                description: "Room total summery",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
