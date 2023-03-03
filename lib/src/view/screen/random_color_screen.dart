import 'package:flutter/material.dart';
import 'package:heythere/src/controller/random_color_controller.dart';

///Page that shows 'hey there'
///with a random backgroud color
class RandomColorScreen extends StatefulWidget {
  const RandomColorScreen({super.key});

  @override
  State<RandomColorScreen> createState() => _RandomColorScreen();
}

class _RandomColorScreen extends State<RandomColorScreen> {
  RandomColorController randomColorController = RandomColorController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Solid Software Test"),
          centerTitle: true,
        ),
        body: GestureDetector(
          onTap: () {
            setState(() {
              randomColorController.changeBackgroundColor();
            });
          },
          child: ColoredBox(
            color: randomColorController.backgroundColor,
            child: const Center(
              child: Text(
                "Hey there",
                style: TextStyle(
                    fontSize: 20,
                ),
              ),
            ),
          ),
        )
    );
  }
}