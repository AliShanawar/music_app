import 'package:flutter/material.dart';

import '../presntation/resources/color_manager.dart';

class TextformFields extends StatelessWidget {
  TextformFields({required this.hintText, required this.icon});

  final String hintText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
      child: TextFormField(
        style: TextStyle(color: ColorManager.white),
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          filled: true,
          prefixIcon: Icon(
            icon,
            color: ColorManager.white,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: new OutlineInputBorder(
            borderRadius: new BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.grey),
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: ColorManager.white),
        ),
      ),
    );
  }
}
