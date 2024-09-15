import 'package:adstackdashboard/config/images.dart';
import 'package:adstackdashboard/pages/mobilehomepage.dart';
import 'package:adstackdashboard/pages/mobileleftpage.dart';
import 'package:adstackdashboard/pages/mobilerightpage.dart';
import 'package:adstackdashboard/widgets/usedwidgets.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  UsedWidgets _usedWidgets = UsedWidgets();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, Constraints) {
      if (Constraints.maxWidth > 800) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(30)),
              child: Row(
                children: [
                  Container(
                    ////////////////////////////////////////////////////////////left
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomLeft: Radius.circular(30)),
                        color: Color.fromARGB(255, 255, 255, 255)),
                    height: MediaQuery.of(context).size.height,
                    width: 300,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 50,
                            width: 100,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        AssetsImage.adstackmedialogo),
                                    fit: BoxFit.fill)),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Divider(
                            thickness: 2,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          _usedWidgets.circularImage(), /////circularimage

                          const SizedBox(
                            height: 8,
                          ),
                          const Text(
                            "Pooja MIshra",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          _usedWidgets.adminButton(),
                          const SizedBox(
                            height: 8,
                          ),
                          const Divider(
                            thickness: 2,
                          ),

                          _usedWidgets.customButton(
                              "Home",
                              Icons.home_filled,
                              const Color.fromRGBO(241, 241, 239, 1),
                              FontWeight.bold),
                          _usedWidgets.customButton(
                              "Employees",
                              Icons.people_alt_outlined,
                              Colors.white,
                              FontWeight.w500),
                          _usedWidgets.customButton(
                              "Attandance",
                              Icons.content_paste_go_sharp,
                              Colors.white,
                              FontWeight.w500),
                          _usedWidgets.customButton(
                              "Summary",
                              Icons.calendar_month,
                              Colors.white,
                              FontWeight.w500),
                          _usedWidgets.customButton("Information", Icons.info,
                              Colors.white, FontWeight.w500),
                          Container(
                              height: 50,
                              width: 300,
                              color: const Color.fromRGBO(227, 233, 254, 1),
                              child: const Center(
                                  child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "WORKSPACES",
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 0.6),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Icon(Icons.add)
                                ],
                              ))),
                          Container(
                            height: 40,
                            width: 300,
                            color: const Color.fromARGB(255, 255, 255, 255),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 90,
                                ),
                                Text("Adstacks"),
                                SizedBox(
                                  width: 40,
                                ),
                                Icon(Icons.keyboard_arrow_down_outlined)
                              ],
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 300,
                            color: const Color.fromARGB(255, 255, 255, 255),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 90,
                                ),
                                Text(" Finance "),
                                SizedBox(
                                  width: 40,
                                ),
                                Icon(Icons.keyboard_arrow_down_outlined)
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 60,
                          ),
                          TextButton.icon(
                            onPressed: () {
                             
                            },
                            icon: const Icon(
                              Icons.settings,
                              color: Color.fromRGBO(0, 0, 0, 0.6),
                              size: 24,
                            ),
                            label: const Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                'Setting',
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 0.6),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 8.0), 
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextButton.icon(
                            onPressed: () {
                              
                            },
                            icon: const Icon(
                              Icons.logout,
                              color: Color.fromRGBO(0, 0, 0, 0.6),
                              size: 24,
                            ),
                            label: const Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                'Logout',
                                style: TextStyle(
                                    color: Color.fromRGBO(0, 0, 0, 0.6),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0, vertical: 8.0), 
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  //////////////////////////////////////////////////////////

                  Container(
                    /////////////////////////////////////////////////center
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width / 1.691,
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
                                  const Padding(
                                    padding: EdgeInsets.only(left: 40),
                                    child: Text("Home",
                                        style: TextStyle(
                                            color:
                                                Color.fromRGBO(0, 0, 0, 0.538),
                                            fontSize: 22,
                                            fontWeight: FontWeight.w600)),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.26,
                                    // 400,
                                  ),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Container(
                                      height: 50,
                                      width: MediaQuery.of(context).size.width *
                                          0.23,
                                      //  350,
                                      decoration: BoxDecoration(
                                          border: Border.all(width: 2),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          color: const Color.fromRGBO(
                                              47, 41, 62, 1)),
                                      child: SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          children: [
                                            const SizedBox(
                                              width: 30,
                                            ),
                                            const Text(
                                              "Search",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.14,
                                              // 220,
                                            ),
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
                                        Color.fromARGB(
                                            255, 74, 37, 204), 
                                        Color.fromARGB(
                                            255, 246, 172, 173),
                                      ],
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 26, top: 10),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text("ETHEREUM 2.0",
                                            style: TextStyle(
                                                letterSpacing: 1,
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 0.838),
                                                fontSize: 10,
                                                fontWeight: FontWeight.w600)),
                                        const Text("Top Rating",
                                            style: TextStyle(
                                                letterSpacing: 1,
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 0.933),
                                                fontSize: 24,
                                                fontWeight: FontWeight.bold)),
                                        const Text("Project",
                                            style: TextStyle(
                                                letterSpacing: 1,
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 0.933),
                                                fontSize: 24,
                                                fontWeight: FontWeight.bold)),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const Text(
                                            "Trending Project and High Rating",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 0.7),
                                                fontSize: 10,
                                                letterSpacing: 1,
                                                fontWeight: FontWeight.w600)),
                                        const Text("Project Created by Team",
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 0.7),
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
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: const Color.fromRGBO(
                                                27, 37, 75, 1),
                                          ),
                                          child: const Center(
                                            child: Text("Learn More",
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        255, 255, 255, 0.933),
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w600)),
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
                                              image: AssetImage(
                                                  AssetsImage.shapesthree),
                                              fit: BoxFit.cover))),
                                )
                              ],
                            ),

                            const SizedBox(
                              height: 20,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  _usedWidgets.allprojectcards(),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 250,
                                    width: 424,
                                    decoration: BoxDecoration(
                                        color:
                                            const Color.fromRGBO(17, 28, 68, 1),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(
                                              left: 20, top: 10),
                                          child: Text("Top Creators",
                                              style: TextStyle(
                                                  letterSpacing: 1,
                                                  color: Color.fromRGBO(
                                                      255, 255, 255, 0.838),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                        Container(
                                          height: 40,
                                          color: const Color.fromRGBO(
                                              17, 28, 68, 1),
                                          child: const Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Text("Name",
                                                  style: TextStyle(
                                                      letterSpacing: 1,
                                                      color: Color.fromRGBO(
                                                          255, 255, 255, 0.782),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600)),
                                              Text("Artworks",
                                                  style: TextStyle(
                                                      letterSpacing: 1,
                                                      color: Color.fromRGBO(
                                                          255, 255, 255, 0.782),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600)),
                                              Text("Rating",
                                                  style: TextStyle(
                                                      letterSpacing: 1,
                                                      color: Color.fromRGBO(
                                                          255, 255, 255, 0.782),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600)),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 2,
                                        ),
                                        _usedWidgets.topcreaterscard(
                                            "@JOddilson",
                                            "6065",
                                            const AssetImage(
                                                AssetsImage.employeewomen)),
                                        _usedWidgets.topcreaterscard(
                                            "@Maddillsa",
                                            "7031",
                                            const AssetImage(
                                                AssetsImage.employeemen)),
                                        _usedWidgets.topcreaterscard(
                                            "@Thrdilssn ",
                                            "6065",
                                            const AssetImage(AssetsImage.lady)),
                                        _usedWidgets.topcreaterscard(
                                            "@Maddillsa",
                                            "6063",
                                            const AssetImage(
                                                AssetsImage.employeewomen)),
                                      ],
                                    ),
                                  )
                                ],
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
                                        color:
                                            const Color.fromARGB(152, 0, 0, 0),
                                        width: 1),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 50),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            children: [
                                              Text(
                                                  "Overall Performance \n The Year",
                                                  style: TextStyle(
                                                      letterSpacing: 1,
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 0.78),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600)),
                                              SizedBox(
                                                width: 390,
                                              ),
                                              Icon(
                                                Icons.offline_pin,
                                                size: 16,
                                                color: Color.fromRGBO(
                                                    234, 140, 146, 1),
                                              ),
                                              Text("Pending \n Done",
                                                  style: TextStyle(
                                                      letterSpacing: 1,
                                                      color: Color.fromRGBO(
                                                          234, 140, 146, 1),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600)),
                                              SizedBox(
                                                width: 70,
                                              ),
                                              Icon(
                                                Icons.offline_pin,
                                                size: 16,
                                                color: Color.fromRGBO(
                                                    102, 89, 197, 1),
                                              ),
                                              Text("Project \n Done",
                                                  style: TextStyle(
                                                      letterSpacing: 1,
                                                      color: Color.fromRGBO(
                                                          102, 89, 197, 1),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w600)),
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
                                                    show:
                                                        false),
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
                                                    show:
                                                        false), // Remove the dots
                                                color: const Color.fromRGBO(
                                                    102, 89, 197, 1),
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
                                                    show:
                                                        false), // Remove the dots
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
                                            gridData:
                                                const FlGridData(show: false),
                                            borderData: FlBorderData(
                                              show: true,
                                              border: const Border(
                                                bottom: BorderSide(
                                                    color: Colors.black,
                                                    width: 1),
                                                left: BorderSide(
                                                    color: Colors.black,
                                                    width: 1),
                                                right: BorderSide.none,
                                                top: BorderSide.none,
                                              ),
                                            ),
                                            titlesData: FlTitlesData(
                                              show: true,
                                              bottomTitles: AxisTitles(
                                                axisNameWidget:
                                                    const SizedBox.shrink(),
                                                sideTitles: SideTitles(
                                                  showTitles: true,
                                                  reservedSize: 40,
                                                  interval: 1,
                                                  getTitlesWidget:
                                                      (value, meta) {
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
                                                axisNameWidget:
                                                    const SizedBox.shrink(),
                                                sideTitles: SideTitles(
                                                  showTitles: true,
                                                  reservedSize: 40,
                                                  interval: 10,
                                                  getTitlesWidget:
                                                      (value, meta) {
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
                                                        ), 
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                              rightTitles: const AxisTitles(
                                                axisNameWidget: SizedBox
                                                    .shrink(),
                                                sideTitles: SideTitles(
                                                    showTitles: false),
                                              ),
                                              topTitles: const AxisTitles(
                                                axisNameWidget: SizedBox
                                                    .shrink(), 
                                                sideTitles: SideTitles(
                                                    showTitles: false),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                    left: 250,
                                    top: 40,
                                    child: Container(
                                      height: 40,
                                      width: 70,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20),
                                            bottomRight: Radius.circular(20)),
                                        gradient: LinearGradient(
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomLeft,
                                          colors: [
                                            Color.fromARGB(255, 74, 37,
                                                204), // Start color
                                            Color.fromARGB(255, 246, 172,
                                                188), // End color
                                          ],
                                        ),
                                      ),
                                      child: const Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "2023",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 8),
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.offline_pin,
                                                size: 12,
                                                color: Color.fromRGBO(
                                                    251, 250, 255, 0.782),
                                              ),
                                              Text(
                                                "55",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12),
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
                                              color: Color.fromRGBO(
                                                  102, 89, 197, 1),
                                            ),
                                          ),
                                          Text(
                                            "3",
                                            style: TextStyle(
                                              color: Color.fromRGBO(
                                                  102, 89, 197, 1),
                                            ),
                                          ),
                                          Text(
                                            "2",
                                            style: TextStyle(
                                              color: Color.fromRGBO(
                                                  102, 89, 197, 1),
                                            ),
                                          ),
                                          Text(
                                            "1",
                                            style: TextStyle(
                                              color: Color.fromRGBO(
                                                  102, 89, 197, 1),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  ///////////////////////////////////////////////////////////////
                  Expanded(
                    child: Container(
                      height: MediaQuery.of(context)
                          .size
                          .height, ////////////////////////right
                      width: MediaQuery.of(context).size.width / 5,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(27, 37, 75, 1),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          )),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              height: 78,
                              width: MediaQuery.of(context).size.width / 5,
                              decoration: const BoxDecoration(
                                  color: Color.fromRGBO(241, 241, 239, 1),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(30),
                                  )),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.message,
                                          size: 30,
                                        )),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.notifications_active,
                                          size: 30,
                                        )),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.power_settings_new_rounded,
                                        size: 30,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 68,
                                    ),
                                    Container(
                                        width: 45.0,
                                        height: 45.0,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: const Color.fromARGB(183, 0, 0, 0),
                                            width: 2.0,
                                          ),
                                          image: const DecorationImage(
                                            image: AssetImage(AssetsImage.boy),
                                            fit: BoxFit.fill,
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ),
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
                              width: 250.0,
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
                            _usedWidgets.wishsection(
                                "Today Birthday",
                                "2",
                                "Birthday Wishing",
                                const AssetImage(AssetsImage.bgimage)),
                            const SizedBox(
                              height: 10,
                            ),
                            _usedWidgets.wishsection(
                                "   Anniversary  ",
                                "3",
                                "Anniversary Wishing",
                                const AssetImage(AssetsImage.boy))
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      } else {
        return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Container(
                height: 40,
                width: 90,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(AssetsImage.adstackmedialogo),
                        fit: BoxFit.fill)),
              ),
              leading: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const MobileLeftPage()));
                },
                child: const Icon(
                  Icons.menu,
                  color: Color.fromARGB(255, 74, 37, 204),
                  size: 30,
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => MobileRightPage()));
                    },
                    child: const Icon(
                      Icons.notification_add_rounded,
                      color: Color.fromARGB(255, 74, 37, 204),
                      size: 30,
                    ),
                  ),
                )
              ],
            ),
            body: const MobileHomePage());
      }
    });
  }
}
