import 'package:flutter/material.dart';

import 'package:travelbuddy/pages/detailpage.dart';

import 'package:travelbuddy/widgets/boldtext.dart';
import 'package:travelbuddy/widgets/textuse.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  List images = ["fuji.jpg", "bali.jpg", "maldives.jpg", "switz.jpg"];
  var iconImage = {
    "balloon.png": "Ballooning",
    "kayaking.png": "Kayaking",
    "snorkeling.png": "Snorkling",
    "hike.png": "Hiking"
  };
  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(
          height: 45,
        ),
        //Discover text**********
        Container(
            margin: const EdgeInsets.only(left: 20),
            child: BoldText(text: "Discover", color: Colors.black)),
        const SizedBox(height: 3),
        //TabBar*********
        // ignore: avoid_unnecessary_containers
        Container(
          child: Align(
              alignment: Alignment.center,
              child: TabBar(
                controller: _tabController,
                isScrollable: true,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: CircleTabIndicator(
                    color: const Color.fromARGB(255, 65, 154, 226), radius: 4),
                tabs: const [
                  Tab(text: "Places"),
                  Tab(text: "Inspiration"),
                  Tab(
                    text: "Emotions",
                  )
                ],
              )),
        ),

        Container(
          padding: const EdgeInsets.only(left: 20, top: 15),
          height: 300,
          width: double.maxFinite,
          child: TabBarView(
            controller: _tabController,
            children: [
              ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 15),
                    width: 200,
                    height: 325,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage("assets/images/${images[index]}"),
                            fit: BoxFit.cover)),
                  );
                },
              ),
              const Text("there"),
              const Text("bye")
            ],
          ),
        ),
        const SizedBox(height: 30),
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BoldText(
                text: "Explore More",
                color: Colors.black,
                size: 22,
              ),
              AppText(text: "View all", color: Colors.black38)
            ],
          ),
        ),
        const SizedBox(height: 20),
        //********************************************************************************** */
        SizedBox(
            width: double.maxFinite,
            height: 120,
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                // ignore: avoid_unnecessary_containers
                return Container(
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/${iconImage.keys.elementAt(index)}"),
                                fit: BoxFit.cover)),
                      ),
                      const SizedBox(height: 10),
                      // ignore: avoid_unnecessary_containers
                      Container(
                        child: AppText(
                          text: iconImage.values.elementAt(index),
                          color: Colors.black45,
                        ),
                      )
                    ],
                  ),
                );
              },
              scrollDirection: Axis.horizontal,
            )),
        Row(
          children: [
            const SizedBox(
              width: 160,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DetailPage()));
              },
              child: Container(
                width: 180,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 65, 154, 226),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "next....",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        )
        //**************************************************************************************************** */,
      ]),
    );
  }
}

// ignore: must_be_immutable
class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;
  CircleTabIndicator({
    required this.color,
    required this.radius,
  });
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;
  _CirclePainter({
    required this.color,
    required this.radius,
  });
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint paint = Paint();
    paint.color = color;
    paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2, configuration.size!.height);
    canvas.drawCircle(circleOffset + offset, radius, paint);
  }
}
