import 'package:flutter/material.dart';

class Reset extends StatelessWidget {
  const Reset({Key? key, required this.resetText}) : super(key: key);
  final VoidCallback resetText;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text("Fin de la liste ! "),
          ElevatedButton(
              onPressed: resetText, child: const Text("Réinitialiser la liste"))
        ],
      ),
    );
  }
}
