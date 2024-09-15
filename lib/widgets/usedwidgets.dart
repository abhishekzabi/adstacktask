import 'package:adstackdashboard/config/images.dart';
import 'package:adstackdashboard/widgets/cards.dart';
import 'package:flutter/material.dart';

class UsedWidgets{
  Widget adminButton(){
    return Container(
            width: 70, 
            height: 20, 
            child: TextButton(
              onPressed: () {
                //  button action here
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0), 
                ),
                side:const BorderSide(color: Colors.purple), 
              ),
              child:const  Text(
                'Admin',
                style: TextStyle(
                  fontSize: 12, 
                  color: Color.fromARGB(255, 0, 0, 0), 
                ),
              ),
            ),
          );
  }
  Widget circularImage(){
    return Container(
            width: 85.0,
            height: 85.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle, 
              border: Border.all(
                color: const Color.fromARGB(255, 255, 213, 0), 
                width: 2.0, 
              ),
              image:const DecorationImage(
                image: AssetImage(AssetsImage.lady), 
                fit: BoxFit.cover, 
              ),
            ));
  }
  Widget customButton(String buttonname,IconData icon,Color bgcolor,FontWeight fontweight){
    return  SizedBox(
            width: 300,  
            height: 40,  
            child: ElevatedButton(
              onPressed: () {
                // Button action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:bgcolor,
                foregroundColor: Colors.white, 
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0), 
                    bottomLeft: Radius.circular(30.0), 
                  ),
                ),
                padding:const  EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0), 
                elevation: 0, 
              ),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                
                children: [
                  const SizedBox(width: 49,),
                  Icon(icon, color: Color.fromRGBO(0, 0, 0, 0.6),), 
                  const SizedBox(width: 40.0), 
                  Text(
                    buttonname,
                    style: TextStyle(color:  Color.fromRGBO(0, 0, 0, 0.6),fontSize: 16,fontWeight:fontweight), 
                  ),
                ],
              ),
            ),
          );
  }
  Widget wishsection(String title,String numbers,String buttonname,ImageProvider image){
    return  Container(
                      height: 210,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(60, 53, 74, 1),
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        children: [
                          Container(
                           
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(AssetsImage.star),
                                            fit: BoxFit.fill)),
                                  ),
                                  Text(
                                    title,
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(AssetsImage.stars),
                                            fit: BoxFit.fill)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 70,
                           
                            child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                      width: 48.0,
                                      height: 48.0,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Color.fromRGBO(185, 125, 244, 0.5),
                                          width: 2.0,
                                        ),
                                        image: const DecorationImage(
                                          image: AssetImage(AssetsImage.girl),
                                          fit: BoxFit.contain,
                                        ),
                                      )),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                      width: 48.0,
                                      height: 48.0,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(74, 67, 92,1),
                                        shape: BoxShape.circle,
                                        // border: Border.all(
                                        //   color: const Color.fromARGB(255, 255, 213, 0),
                                        //   width: 2.0,
                                        // ),
                                        image: const DecorationImage(
                                          image: AssetImage(AssetsImage.boy),
                                          fit: BoxFit.fill,
                                        ),
                                      )),
                                        const SizedBox(
                                    width: 20,
                                  ),
                                       Container(
                                      width: 48.0,
                                      height: 48.0,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        
                                        image:  DecorationImage(
                                          image:image,
                                          fit: BoxFit.fill,
                                        ),
                                      )),
                                      
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 20,
                            child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Total",
                                    style: TextStyle(
                                         color: Color.fromRGBO(185, 125, 244, 1),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(
                                    width: 25,
                                  ),
                                  VerticalDivider(
                                    thickness: 2,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    numbers,
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  VerticalDivider(
                                    thickness: 2,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          Container(
                            height: 30,
                            width: 200,
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(185, 125, 244, 1),
                                borderRadius: BorderRadius.circular(10)),
                            child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextButton.icon(
                                    onPressed: () {
                                      // Action when button is pressed
                                    },
                                    icon: const Icon(
                                      Icons.send,
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                      size: 20,
                                    ),
                                    label:  Padding(
                                      padding:  EdgeInsets.only(left: 4.0),
                                      child: Text(
                                        buttonname,
                                        style: TextStyle(
                                            color: Color.fromRGBO(
                                                255, 255, 255, 0.967),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    style: TextButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16.0,
                                          vertical: 8.0), // Padding
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    );
  }
  Widget topcreaterscard( String name,String rating,ImageProvider image){
    return    Container(
                                  height: 40,
                                  color: Color.fromRGBO(38, 51, 102, 1),
                                  child: Row(
                                  
                                    
                                    children: [
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                          width: 35.0,
                                          height: 35.0,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                           
                                            image:  DecorationImage(
                                              image:
                                                  image,
                                              fit: BoxFit.cover,
                                            ),
                                          )),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(name,
                                          style:const  TextStyle(
                                              letterSpacing: 1,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 0.782),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600)),
                                      const SizedBox(
                                        width: 80,
                                      ),
                                      Text(rating,
                                          style:const  TextStyle(
                                              letterSpacing: 1,
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 0.782),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600)),
                                      const SizedBox(
                                        width: 70,
                                      ),
                                      Container(
                                        height: 10,
                                        width: 65,
                                        decoration: BoxDecoration(
                                          color:const  Color.fromRGBO(27, 37, 75, 1),
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border: Border.all(
                                            color:
                                               const Color.fromRGBO(27, 37, 75, 1),
                                          ),
                                        ),
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              child: Container(
                                                height: 10,
                                                width: 35,
                                                decoration: BoxDecoration(
                                                    color:const  Color.fromRGBO(
                                                        118, 81, 255, 1),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                );
  }
  Widget allprojectcards(){
    return
     Container(
                                height: 250,
                                width: 424,
                                decoration: BoxDecoration(
                                    color: const Color.fromRGBO(17, 28, 68, 1),
                                    borderRadius: BorderRadius.circular(15)),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  child: const Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.only(left: 20, top: 10),
                                        child: Text("All Projects",
                                            style: TextStyle(
                                                letterSpacing: 1,
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 0.838),
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600)),
                                      ),
                                      Card(
                                        color: Color.fromRGBO(193, 55, 80, 1),
                                        child: CustomListTile(
                                          imageUrl:
                                              'assets/images/computer.jpg', // Pass your image path
                                          title:
                                              'Technology begind the Blockchain',
                                          subtitlefirst: 'Project # 1 ',
                                          subtitlesecond: "See project details",
                                          icon: Icons.edit,
                                          radius: 20,
                                          iconsize: 20,
                                        ),
                                      ),
                                      Card(
                                        color: Color.fromRGBO(38, 51, 102, 1),
                                        child: CustomListTile(
                                          imageUrl:
                                              'assets/images/computerone.jpg',
                                          title:
                                              'Technology begind the Blockchain',
                                          subtitlefirst: 'Project # 1 ',
                                          subtitlesecond: "See project details",
                                          icon: Icons.edit,
                                          radius: 20,
                                          iconsize: 20,
                                        ),
                                      ),
                                      Card(
                                        color: Color.fromRGBO(38, 51, 102, 1),
                                        child: CustomListTile(
                                          imageUrl: 'assets/images/computer.jpg',
                                          title:
                                              'Technology begind the Blockchain',
                                          subtitlefirst: 'Project # 1 ',
                                          subtitlesecond: "See project details",
                                          icon: Icons.edit,
                                          radius: 20,
                                          iconsize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
  }
}