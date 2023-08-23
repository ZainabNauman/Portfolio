import 'package:flutter/material.dart';

Widget buildSkillChip(String skill) {
  return Chip(
    label: Text(
      skill,
      style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.normal,
          fontFamily: "Poppins"),
    ),
    backgroundColor: Color.fromARGB(255, 174, 200, 248),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
  );
}
