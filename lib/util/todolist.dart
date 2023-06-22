import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';

class Todolist extends StatelessWidget {
  final String namatugas;
  final bool tugasselesai;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  Todolist(
      {super.key,
      required this.namatugas,
      required this.tugasselesai,
      required this.onChanged,
      required this.deleteFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, right: 25, left: 25),
      child: Slidable(
        endActionPane: ActionPane(motion: const StretchMotion(), children: [
          SlidableAction(
            onPressed: deleteFunction,
            icon: Icons.delete,
            backgroundColor: Colors.red.shade300,
            borderRadius: BorderRadius.circular(12),
          )
        ]),
        child: Container(
          padding: const EdgeInsets.all(24),
          child: Row(
            children: [
              Checkbox(
                value: tugasselesai,
                onChanged: onChanged,
                activeColor: Colors.blue,
              ),
              Text(
                namatugas,
                style: GoogleFonts.roboto(
                    fontSize: 18,
                    color: Colors.white,
                    decoration: tugasselesai
                        ? TextDecoration.lineThrough
                        : TextDecoration.none),
              ),
            ],
          ),
          decoration: BoxDecoration(
              color: const Color(0xff071D31),
              borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }
}
