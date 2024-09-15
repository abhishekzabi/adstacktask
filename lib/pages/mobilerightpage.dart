import 'package:adstackdashboard/config/images.dart';
import 'package:adstackdashboard/widgets/usedwidgets.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class MobileRightPage extends StatefulWidget {
  const MobileRightPage({super.key});

  @override
  State<MobileRightPage> createState() => _MobileRightPageState();
}

class _MobileRightPageState extends State<MobileRightPage> {
   UsedWidgets _usedWidgets = UsedWidgets();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
                          height: MediaQuery.of(context)
                              .size
                              .height, 
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                              color: Color.fromRGBO(27, 37, 75, 1),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                              )),
                          child: SingleChildScrollView(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [
                                
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    "GENERAL 10.00:AM TO 7.00 PM",
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 0.726),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    height: 170.0,
                                      width: MediaQuery.of(context).size.width,
                                    // width: 250.0,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: SfCalendar(
                                      view: CalendarView.month,
                                      todayHighlightColor:
                                          const Color.fromRGBO(185, 125, 244, 1),
                                      selectionDecoration: BoxDecoration(
                                        color:
                                            const Color.fromRGBO(185, 125, 244, 0.5),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      showNavigationArrow: true,
                                      monthViewSettings: const MonthViewSettings(
                                        appointmentDisplayMode:
                                            MonthAppointmentDisplayMode.indicator,
                                        dayFormat: 'EEE',
                                      ),
                                      todayTextStyle: const TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  _mobilewishsection(
                                      "Today Birthday",
                                      "2",
                                      "Birthday Wishing",
                                      const AssetImage(AssetsImage.bgimage)),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  _mobilewishsection(
                                      "   Anniversary  ",
                                      "3",
                                      "Anniversary Wishing",
                                      const AssetImage(AssetsImage.boy)),
                                      const SizedBox(height: 100,)
                                ],
                              ),
                            ),
                          ),
                        ),
      ),
    );
  }
  Widget _mobilewishsection(String title,String numbers,String buttonname,ImageProvider image){
    return  Container(
                      height: 210,
                        width: MediaQuery.of(context).size.width,
                      // width: 250,
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
                            height: 40,
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
                                            fontSize: 12,
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

}