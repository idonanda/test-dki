
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:test_bank_dki/const.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: height,
        width: width,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 320,
                width: width,
                child: Stack(
                  children: [
                    Container(
                      height: height / 3.2,
                      width: width,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xffFF4747),
                            Color(0xffFC9842),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                      ),
                    ),
                    SafeArea(
                      child: Padding(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: 50,
                                  child: Image.asset(
                                    "assets/images/logo_splash.png",
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                                SizedBox(
                                  height: 40,
                                  child: Row(
                                    children: [
                                      Image.asset(
                                          "assets/images/icon_paper.png"),
                                      Image.asset("assets/images/icon_bell.png")
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: 90,
                              width: width,
                              child: const Row(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.person_2_rounded,
                                      color: Colors.orange,
                                      size: 50,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Good morning,\nGuest",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 26),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color(0xffFF4747),
                                      Color(0xffFC9842),
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 5,
                                      offset: const Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),
                                      color: Colors.white,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const SizedBox(
                                            height: 70,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Balance Account",
                                                  style:
                                                      TextStyle(fontSize: 16),
                                                ),
                                                Text(
                                                  "Rp 0",
                                                  style:
                                                      TextStyle(fontSize: 24),
                                                ),
                                                Text(
                                                  "-",
                                                  style:
                                                      TextStyle(fontSize: 16),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 35,
                                            width: 60,
                                            child: Image.asset(
                                                "assets/images/button_topup.png"),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 120,
                width: width,
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    List<Image> listImage = [
                      Image.asset(
                        "assets/images/image_map.png",
                      ),
                      Image.asset(
                        "assets/images/image_topup.png",
                      ),
                      Image.asset(
                        "assets/images/image_balance.png",
                      ),
                      Image.asset(
                        "assets/images/image_events.png",
                      ),
                    ];
                    const List<Text> listText = [
                      Text(
                        "Explore Jakarta",
                        style: TextStyle(fontSize: 10),
                      ),
                      Text(
                        "Top Up JakCard",
                        style: TextStyle(fontSize: 10),
                      ),
                      Text(
                        "JakCard Balance",
                        style: TextStyle(fontSize: 10),
                      ),
                      Text(
                        "Events",
                        style: TextStyle(fontSize: 10),
                      ),
                    ];
                    return Container(
                      width: width / 5,
                      height: width / 5,
                      margin: const EdgeInsets.all(6.0),
                      child: Column(
                        children: [
                          listImage[index],
                          const SizedBox(
                            height: 5,
                          ),
                          listText[index]
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 120,
                width: width,
                child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  pageSnapping: true,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Container(
                      width: width,
                      height: 100,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: Image.asset(
                        "assets/images/banner.png",
                        fit: BoxFit.fitHeight,
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: height / 4,
                width: width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: Image.asset(
                            "assets/images/leading_marker.png",
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            height: 50,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Let's Go with Jakarta Tourist Pass",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text("a place not to be missed"),
                                Container(
                                  height: 3,
                                  width: 45,
                                  color: Colors.orange,
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                          width: 80,
                          child: Center(
                            child: Text(
                              "View all",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Container(
                            width: width/3.5,
                            height: 50,
                            margin: const EdgeInsets.only(right:5,left: 5),
                            child: Image.asset("assets/images/card_example.png"),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              SizedBox(
                height: height / 3.5,
                width: width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: Image.asset(
                            "assets/images/leading_event.png",
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            height: 50,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Events in Jakarta",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text("don't miss the current events"),
                                Container(
                                  height: 3,
                                  width: 45,
                                  color: Colors.orange,
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                          width: 80,
                          child: Center(
                            child: Text(
                              "View all",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Container(
                            width: width/2,
                            height: 50,
                            margin: const EdgeInsets.only(right:5,left: 5),
                            child: Image.asset("assets/images/event_example.png"),
                          );
                        },
                      ),
                    )
                  ],
                ),
              )
 
            ],
          ),
        ),
      ),
      floatingActionButton: Image.asset(
        "assets/images/qris.png",
        height: 70,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        gapLocation: GapLocation.center,
        height: 60,
        activeColor: Colors.orange,
        icons: const [
          Icons.home_filled,
          Icons.person_2_rounded,
        ],
        activeIndex: 0,
        onTap: (p0) {},
        notchSmoothness: NotchSmoothness.smoothEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
      ),
    );
  }
}
