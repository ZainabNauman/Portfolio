import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../utils/helper_functions.dart';

class SkillsWidget extends StatelessWidget {
  const SkillsWidget({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              StringConstants.workskills,
              style:  TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  fontFamily: StringConstants.poppins),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                buildSkillChip(StringConstants.flutter),
                buildSkillChip(StringConstants.dart),
                buildSkillChip(StringConstants.uiDesign),
                buildSkillChip(StringConstants.responsiveDesign),
                buildSkillChip(StringConstants.react),
                buildSkillChip(StringConstants.html),
                buildSkillChip(StringConstants.css),
                buildSkillChip(StringConstants.javascript),
                buildSkillChip(StringConstants.mongoDB),
                buildSkillChip(StringConstants.sql),
               
              ],
            ),
            SizedBox(height: 20),
             Text(
              StringConstants.softskills,
              style:  TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  fontFamily: StringConstants.poppins),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                buildSkillChip(StringConstants.timemanage),
                buildSkillChip(StringConstants.flexibility),
                buildSkillChip(StringConstants.research),
                ],
            ),
          ],
        ),
      ),
    );
  }
}
