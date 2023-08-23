import 'package:flutter/material.dart';
import 'package:portfolio/widgets/social_media.dart';
import '../utils/constants.dart';

class SideBarData extends StatelessWidget {
  const SideBarData({super.key});

  @override
  Widget build(BuildContext context) {
     double height = MediaQuery.of(context).size.height;
     double width = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
      
      child: Column(mainAxisAlignment: MainAxisAlignment.start,
        children: [
           SizedBox(height: height*0.05),
           ClipRRect(
            borderRadius: BorderRadius.circular(15),
             child: Image.asset("assets/images/my.jpg", height:100,
                                   width: 100,),
           ),
           SizedBox(height: height*0.03),
          Text(
              StringConstants.name,
              textAlign: TextAlign.center,
              style:  TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: StringConstants.poppins),
            ),
             SizedBox(height: height*0.001),
            Text(
              StringConstants.occupation,
              textAlign: TextAlign.center,
              style:  TextStyle(
                  fontSize: 15,
                  color: Colors.black45,
                  fontWeight: FontWeight.normal,
                  fontFamily: StringConstants.poppins),
            ),
             //SizedBox(height: height*0.007),
            SocialMedia(),
            //SizedBox(height: height*0.007),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(color: Color.fromARGB(40, 80, 83, 95),borderRadius: BorderRadius.circular(10)),
                
                child:Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8,bottom: 8),
                    child: Row(children: [
                      Image.asset("assets/images/Location.png", height:30,
                                 width: 30,),
                                 SizedBox(width: width*0.02),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                                Text(StringConstants.location,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                    color: Colors.black45,
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                    fontFamily: StringConstants.poppins)
                        ),
                         SizedBox(height: height*0.005),
                        Text(StringConstants.sialkot,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                      fontFamily: StringConstants.poppins)),
                      ],)
                   
                    ]),
                  ),
                

                  const Divider(
                  height: 10,
                  thickness: 1,
                  indent: 0,
                  endIndent: 0,
                  color: Colors.white,
                ),      
                Padding(
                  padding: const EdgeInsets.only(top:8,bottom: 8),
                  child: Row(children: [
                    Image.asset("assets/images/Email.png", height:30,
                               width: 30),
                               SizedBox(width: width*0.02),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                Text(StringConstants.emailid,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                      fontFamily: StringConstants.poppins)),
                         SizedBox(height: height*0.005),
                        Text(StringConstants.id,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                      fontFamily: StringConstants.poppins)),
                    ],)
                
                  ]),
                ),
                      
                      
                       const Divider(
                  height: 10,
                  thickness: 1,
                  indent: 0,
                  endIndent: 0,
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.only(top:8,bottom: 8),
                  child: Row(children: [
                    Image.asset("assets/images/Phone.png", height:30,
                               width: 30),
                               SizedBox(width: width*0.02),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                 Text(StringConstants.phoneno,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                      fontFamily: StringConstants.poppins)),
                         SizedBox(height: height*0.005),
                        Text(StringConstants.no,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                      fontFamily: StringConstants.poppins)),
                       
                  ],)],),
                )
                     
              ],)),
            ),
         SizedBox(height: height * 0.1),
        ],
      ),
    );
  }
}
