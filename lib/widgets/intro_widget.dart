import 'package:flutter/material.dart';

import '../utils/constants.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
      double width = MediaQuery.of(context).size.width;
    return Padding(
        padding: const EdgeInsets.only(left: 12, right: 12, top: 50,bottom: 50),
        child: Container(
          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15)),
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text(
              StringConstants.about,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: StringConstants.poppins),
            ),
            SizedBox(height: mediaQuery.size.height * 0.07),
            Text(
              StringConstants.welcome,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: StringConstants.poppins),
            ),
            Text(
              StringConstants.exploring,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: StringConstants.poppins),
            ),
           SizedBox(height: 8),
            Text(
              StringConstants.grad,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: StringConstants.poppins),
            ),
            Text(
              StringConstants.fastname,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromARGB(255, 90, 104, 153),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: StringConstants.poppins),
            ),
                SizedBox(height: mediaQuery.size.height * 0.04),
               Padding(
  padding: const EdgeInsets.all(20.0),
  child: SizedBox(
   
     
    height: width<1070
    ?450
    :
    250,
    width: double.infinity,
    child: Column(children: [
    Padding(
          padding: const EdgeInsets.all(15.0),
      child: Wrap(
 spacing: 10,
              runSpacing: 10,
  children: [
    Container(
      width: 200,
      decoration: BoxDecoration(
        color: Color.fromARGB(47, 26, 79, 170),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Text(
              StringConstants.uiuxheading,
              maxLines: 10,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: StringConstants.poppins,
              ),
            ),
            Text(
              StringConstants.uiux,
              maxLines: 10,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.normal,
                fontFamily: StringConstants.poppins,
              ),
            ),
          ],
        ),
      ),
    ),
    SizedBox(width:
    width<910
    
    ? width * 0.02
    :width * 0.05
    ),  // Add some spacing between the containers
    Container(
      width: 250,
      decoration: BoxDecoration(
        color: Color.fromARGB(100, 191, 120, 219),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Text(
              StringConstants.appdevheading,
              maxLines: 10,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: StringConstants.poppins,
              ),
            ),
            Text(
              StringConstants.appdev,
              maxLines: 10,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.normal,
                fontFamily: StringConstants.poppins,
              ),
            ),
          ],
        ),
      ),
    ),
  ],
)
)
    
    ]
    )
    )
    )
    ]
    )));
    
}}