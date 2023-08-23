import 'package:flutter/material.dart';

import '../utils/constants.dart';

class ContactMe extends StatelessWidget{
  const ContactMe({super.key});
  
  @override
  Widget build(BuildContext context) {
     
     double width = MediaQuery.of(context).size.width;
      double height = MediaQuery.of(context).size.height;
    return Padding(padding: EdgeInsets.symmetric(horizontal: width * 0.01),
      child: Container(decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(15)),
      width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(StringConstants.contact,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: StringConstants.poppins),
                    ),
              SizedBox(height: height*0.03),
              Wrap( spacing: 10,
              runSpacing: 10,
              children: [
              Container(
                decoration: BoxDecoration(color: const Color.fromARGB(255, 244, 201, 215),borderRadius: BorderRadius.circular(15)),
                
                child:Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                              Text(StringConstants.phoneno,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: StringConstants.poppins)),
                             SizedBox(height: height*0.005),
                              Text(StringConstants.no,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: StringConstants.poppins)),
                              ],),
                )),
               SizedBox(height: height*0.03),
             Container(decoration: BoxDecoration(color:const Color.fromARGB(255, 189, 217, 239), borderRadius: BorderRadius.circular(15)),
             child:Padding(
              padding: EdgeInsets.all(12),
               child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                Text(StringConstants.emailid,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black45,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: StringConstants.poppins)),
                             SizedBox(height: height*0.005),
                Text(StringConstants.id,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          fontFamily: StringConstants.poppins)),
                ],),
             )),
              ]),
             
             
              SizedBox(height: height*0.03),
              Text(StringConstants.contactdesc,
                     textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          fontFamily: StringConstants.poppins),
             ),
            ],
          ),
        ),
      ),
    );
  }
  
}