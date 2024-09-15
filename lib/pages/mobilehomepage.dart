import 'package:adstackdashboard/config/images.dart';
import 'package:adstackdashboard/widgets/cards.dart';
import 'package:adstackdashboard/widgets/mobilecards.dart';
import 'package:adstackdashboard/widgets/usedwidgets.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MobileHomePage extends StatefulWidget {
  const MobileHomePage({super.key});

  @override
  State<MobileHomePage> createState() => _MobileHomePageState();
}

class _MobileHomePageState extends State<MobileHomePage> {
  UsedWidgets _usedWidgets = UsedWidgets();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          /////////////////////////////////////////////////center
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: const Color.fromRGBO(241, 241, 239, 1),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            height: 50,
                            width: 250,
                            decoration: BoxDecoration(
                                border: Border.all(width: 2),
                                borderRadius: BorderRadius.circular(15),
                                color: const Color.fromRGBO(47, 41, 62, 1)),
                            child: const SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  const Text(
                                    "Search",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(width: 120),
                                  const Icon(
                                    Icons.search,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ///////////////////////////////////
                  Stack(
                    children: [
                      Container(
                        height: 200,
                        width: 840,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: const LinearGradient(
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                            colors: [
                              Color.fromARGB(255, 74, 37, 204), // Start color
                              Color.fromARGB(255, 246, 172, 173), // End color
                            ],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 26, top: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("ETHEREUM 2.0",
                                  style: TextStyle(
                                      letterSpacing: 1,
                                      color:
                                          Color.fromRGBO(255, 255, 255, 0.838),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600)),
                              const Text("Top Rating",
                                  style: TextStyle(
                                      letterSpacing: 1,
                                      color:
                                          Color.fromRGBO(255, 255, 255, 0.933),
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold)),
                              const Text("Project",
                                  style: TextStyle(
                                      letterSpacing: 1,
                                      color:
                                          Color.fromRGBO(255, 255, 255, 0.933),
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold)),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text("Trending Project and High Rating",
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 0.7),
                                      fontSize: 10,
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.w600)),
                              const Text("Project Created by Team",
                                  style: TextStyle(
                                      color: Color.fromRGBO(255, 255, 255, 0.7),
                                      fontSize: 10,
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.w600)),
                              const SizedBox(
                                height: 15,
                              ),
                              Container(
                                height: 40,
                                width: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: const Color.fromRGBO(27, 37, 75, 1),
                                ),
                                child: const Center(
                                  child: Text("Learn More",
                                      style: TextStyle(
                                          color: Color.fromRGBO(
                                              255, 255, 255, 0.933),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600)),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 490,
                        child: Container(
                            height: 200,
                            width: 350,
                            decoration: const BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                ),
                                image: DecorationImage(
                                    image: AssetImage(AssetsImage.shapesthree),
                                    fit: BoxFit.cover))),
                      )
                    ],
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  ////////////////////////////
                  Container(
                    height: 310,
                    width: 424,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(17, 28, 68, 1),
                        borderRadius: BorderRadius.circular(15)),
                    child:const  SingleChildScrollView(
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20, top: 10),
                            child: Text("All Projects",
                                style: TextStyle(
                                    letterSpacing: 1,
                                    color: Color.fromRGBO(255, 255, 255, 0.838),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600)),
                          ),
                          Card(
                            color: Color.fromRGBO(193, 55, 80, 1),
                            child: MobileCards(
                              imageUrl:
                                  'assets/images/computer.jpg', // Pass your image path
                              title: 'Technology begind the Blockchain',
                              subtitlefirst: 'Project # 1 ',
                              subtitlesecond: "See project details",
                              icon: Icons.edit,
                              radius: 20,
                              iconsize: 20,
                            ),
                          ),
                          Card(
                            color: Color.fromRGBO(38, 51, 102, 1),
                            child: MobileCards(
                              imageUrl: 'assets/images/computerone.jpg',
                              title: 'Technology begind the Blockchain',
                              subtitlefirst: 'Project # 1 ',
                              subtitlesecond: "See project details",
                              icon: Icons.edit,
                              radius: 20,
                              iconsize: 20,
                            ),
                          ),
                          Card(
                            color: Color.fromRGBO(38, 51, 102, 1),
                            child: MobileCards(
                              imageUrl: 'assets/images/computer.jpg',
                              title: 'Technology begind the Blockchain',
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
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 310,
                    width: 424,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(17, 28, 68, 1),
                        borderRadius: BorderRadius.circular(15)),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 20, top: 10),
                            child: Text("Top Creators",
                                style: TextStyle(
                                    letterSpacing: 1,
                                    color: Color.fromRGBO(255, 255, 255, 0.838),
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            height: 40,
                            color: const Color.fromRGBO(17, 28, 68, 1),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("Name",
                                    style: TextStyle(
                                        letterSpacing: 1,
                                        color: Color.fromRGBO(
                                            255, 255, 255, 0.782),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600)),
                                Text("Artworks",
                                    style: TextStyle(
                                        letterSpacing: 1,
                                        color: Color.fromRGBO(
                                            255, 255, 255, 0.782),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600)),
                                Text("Rating",
                                    style: TextStyle(
                                        letterSpacing: 1,
                                        color: Color.fromRGBO(
                                            255, 255, 255, 0.782),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600)),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          _createrscard("@JOddilson", "6065",
                              const AssetImage(AssetsImage.employeewomen)),
                          const SizedBox(
                            height: 2,
                          ),
                          _createrscard("@Maddillsa", "7031",
                              const AssetImage(AssetsImage.employeemen)),
                          const SizedBox(
                            height: 2,
                          ),
                          _createrscard("@Thrdilssn ", "6065",
                              const AssetImage(AssetsImage.lady)),
                          const SizedBox(
                            height: 2,
                          ),
                          _createrscard("@Maddillsa", "6063",
                              const AssetImage(AssetsImage.employeewomen)),
                          const SizedBox(
                            height: 2,
                          ),
                          _createrscard("@Thrdilssn ", "6065",
                              const AssetImage(AssetsImage.lady)),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 200,
                        width: 840,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: const Offset(4, 4),
                              blurRadius: 8,
                              spreadRadius: 2,
                            ),
                          ],
                          border: Border.all(
                              color: const Color.fromARGB(152, 0, 0, 0),
                              width: 1),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 50),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Text("Overall Performance \n The Year",
                                        style: TextStyle(
                                            letterSpacing: 1,
                                            color:
                                                Color.fromRGBO(0, 0, 0, 0.78),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600)),
                                    SizedBox(
                                      width: 0,
                                    ),
                                    Icon(
                                      Icons.offline_pin,
                                      size: 16,
                                      color: Color.fromRGBO(234, 140, 146, 1),
                                    ),
                                    Text("Pending \n Done",
                                        style: TextStyle(
                                            letterSpacing: 1,
                                            color: Color.fromRGBO(
                                                234, 140, 146, 1),
                                            fontSize: 8,
                                            fontWeight: FontWeight.w600)),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Icon(
                                      Icons.offline_pin,
                                      size: 16,
                                      color: Color.fromRGBO(102, 89, 197, 1),
                                    ),
                                    Text("Project \n Done",
                                        style: TextStyle(
                                            letterSpacing: 1,
                                            color:
                                                Color.fromRGBO(102, 89, 197, 1),
                                            fontSize: 8,
                                            fontWeight: FontWeight.w600)),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: LineChart(
                                LineChartData(
                                  lineBarsData: [
                                    LineChartBarData(
                                      spots: const [
                                        FlSpot(2010, 3),
                                        FlSpot(2011, 5),
                                        FlSpot(2012, 1),
                                        FlSpot(2013, 4),
                                        FlSpot(2014, 2),
                                        FlSpot(2015, 4),
                                      ],
                                      isCurved: true,
                                      dotData: const FlDotData(
                                          show: false), // Remove the dots
                                      color: const Color.fromRGBO(
                                          234, 140, 146, 1),
                                      barWidth: 3,
                                      belowBarData: BarAreaData(
                                        show: true,
                                        color: const Color.fromARGB(
                                            0, 189, 11, 11),
                                      ),
                                    ),
                                    LineChartBarData(
                                      spots: const [
                                        FlSpot(2010, 2),
                                        FlSpot(2011, 4),
                                        FlSpot(2012, 3),
                                        FlSpot(2013, 2),
                                        FlSpot(2014, 5),
                                        FlSpot(2015, 3),
                                      ],
                                      isCurved: true,
                                      dotData: const FlDotData(
                                          show: false), // Remove the dots
                                      color:
                                          const Color.fromRGBO(102, 89, 197, 1),
                                      barWidth: 3,
                                      belowBarData: BarAreaData(
                                        show: true,
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    LineChartBarData(
                                      spots: const [
                                        FlSpot(2010, 1.6),
                                        FlSpot(2011, 3.6),
                                        FlSpot(2012, 2.6),
                                        FlSpot(2013, 1.6),
                                        FlSpot(2014, 4.6),
                                        FlSpot(2015, 2.6),
                                      ],
                                      isCurved: true,
                                      dotData: const FlDotData(
                                          show: false), // Remove the dots
                                      color: const Color.fromRGBO(
                                          102, 89, 197, 0.555),
                                      barWidth: 3,
                                      belowBarData: BarAreaData(
                                        show: true,
                                        color: const Color.fromARGB(
                                            0, 201, 11, 11),
                                      ),
                                    ),
                                  ],
                                  minX: 2010,
                                  maxX: 2015,
                                  minY: 0,
                                  maxY: 6,
                                  backgroundColor: Colors.white,
                                  gridData: const FlGridData(show: false),
                                  borderData: FlBorderData(
                                    show: true,
                                    border: const Border(
                                      bottom: BorderSide(
                                          color: Colors.black, width: 1),
                                      left: BorderSide(
                                          color: Colors.black, width: 1),
                                      right: BorderSide.none,
                                      top: BorderSide.none,
                                    ),
                                  ),
                                  titlesData: FlTitlesData(
                                    show: true,
                                    bottomTitles: AxisTitles(
                                      axisNameWidget: const SizedBox.shrink(),
                                      sideTitles: SideTitles(
                                        showTitles: true,
                                        reservedSize: 40,
                                        interval: 1,
                                        getTitlesWidget: (value, meta) {
                                          String text = '';
                                          switch (value.toInt()) {
                                            case 2010:
                                              text = '2010';
                                              break;
                                            case 2011:
                                              text = '2011';
                                              break;
                                            case 2012:
                                              text = '2012';
                                              break;
                                            case 2013:
                                              text = '2013';
                                              break;
                                            case 2014:
                                              text = '2014';
                                              break;
                                            case 2015:
                                              text = '2015';
                                              break;
                                          }
                                          return SideTitleWidget(
                                            axisSide: meta.axisSide,
                                            child: Text(
                                              text,
                                              style: const TextStyle(
                                                color: Color.fromRGBO(
                                                    102, 89, 197, 1),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    leftTitles: AxisTitles(
                                      axisNameWidget: const SizedBox.shrink(),
                                      sideTitles: SideTitles(
                                        showTitles: true,
                                        reservedSize: 40,
                                        interval: 10,
                                        getTitlesWidget: (value, meta) {
                                          String text = '';
                                          switch (value.toInt()) {
                                            case 0:
                                              text = '0';
                                              break;
                                            case 10:
                                              text = '10';
                                              break;
                                            case 20:
                                              text = '20';
                                              break;
                                            case 30:
                                              text = '30';
                                              break;
                                            case 40:
                                              text = '40';
                                              break;
                                            case 50:
                                              text = '50';
                                              break;
                                          }
                                          return SideTitleWidget(
                                            axisSide: meta.axisSide,
                                            child: Text(
                                              text,
                                              style: const TextStyle(
                                                color: Color.fromRGBO(
                                                    102, 89, 197, 1),
                                              ), // Set text color to red
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    rightTitles: const AxisTitles(
                                      axisNameWidget: SizedBox
                                          .shrink(), // Hide titles on the right side
                                      sideTitles: SideTitles(showTitles: false),
                                    ),
                                    topTitles: const AxisTitles(
                                      axisNameWidget: SizedBox
                                          .shrink(), // Hide titles at the top
                                      sideTitles: SideTitles(showTitles: false),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          left: 110,
                          top: 40,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20)),
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Color.fromARGB(
                                      255, 74, 37, 204), // Start color
                                  Color.fromARGB(
                                      255, 246, 172, 188), // End color
                                ],
                              ),
                            ),
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "2023",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 8),
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.offline_pin,
                                      size: 8,
                                      color:
                                          Color.fromRGBO(251, 250, 255, 0.782),
                                    ),
                                    Text(
                                      "55",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )),
                      const Positioned(
                          left: 38,
                          top: 50,
                          child: SizedBox(
                            height: 90,
                            width: 10,
                            child: Column(
                              children: [
                                Text(
                                  "4",
                                  style: TextStyle(
                                    color: Color.fromRGBO(102, 89, 197, 1),
                                  ),
                                ),
                                Text(
                                  "3",
                                  style: TextStyle(
                                    color: Color.fromRGBO(102, 89, 197, 1),
                                  ),
                                ),
                                Text(
                                  "2",
                                  style: TextStyle(
                                    color: Color.fromRGBO(102, 89, 197, 1),
                                  ),
                                ),
                                Text(
                                  "1",
                                  style: TextStyle(
                                    color: Color.fromRGBO(102, 89, 197, 1),
                                  ),
                                ),
                              ],
                            ),
                          ))
                    ],
                  ),
                  const SizedBox(height: 100)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _createrscard(String name, String rating, ImageProvider image) {
    return Container(
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
                image: DecorationImage(
                  image: image,
                  fit: BoxFit.cover,
                ),
              )),
          const SizedBox(
            width: 12,
          ),
          Text(name,
              style: const TextStyle(
                  letterSpacing: 1,
                  color: Color.fromRGBO(255, 255, 255, 0.782),
                  fontSize: 12,
                  fontWeight: FontWeight.w600)),
          const SizedBox(
            width: 8,
          ),
          Text(rating,
              style: const TextStyle(
                  letterSpacing: 1,
                  color: Color.fromRGBO(255, 255, 255, 0.782),
                  fontSize: 10,
                  fontWeight: FontWeight.w600)),
          const SizedBox(
            width: 90,
          ),
          Container(
            height: 10,
            width: 35,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(27, 37, 75, 1),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: const Color.fromRGBO(27, 37, 75, 1),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 10,
                    width: 25,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(118, 81, 255, 1),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
