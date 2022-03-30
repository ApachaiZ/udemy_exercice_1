import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  const TextControl({
    Key? key,
    required this.textIndex,
    required this.textList,
    required this.changeText,
  }) : super(key: key);
  final int textIndex;
  final List textList;
  final VoidCallback changeText;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(textList.elementAt(textIndex)),
          ElevatedButton(
              onPressed: changeText, child: const Text("Changer le texte"))
        ],
      ),
    );
  }
}
