import 'package:flutter/material.dart';
import 'package:noteday/util/button.dart';

class NewTask extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  NewTask(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color(0xff071D31),
      content: Container(
        height: 120,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(12)),
              child: TextField(
                controller: controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "Add a new task"),
              ),
            ),
            const Spacer(),
            Row(
              children: [
                MyButton(text: "Save", onPressed: onSave),
                const Spacer(),
                MyButton(text: "Cancel", onPressed: onCancel),
              ],
            )
          ],
        ),
      ),
    );
  }
}
