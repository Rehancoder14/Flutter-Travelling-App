import 'package:flutter/material.dart';
import 'package:travelbuddy/pages/appbuttons.dart';

import 'package:travelbuddy/widgets/textuse.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int getstars = 3;
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Stack(
          // stack is a widget use to overlap the thing or any other widget
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: 350,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/evemountain.png"),
                          fit: BoxFit.cover)),
                )),
            Positioned(
                left: 20,
                top: 60,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.white,
                        ))
                  ],
                )),
            Positioned(
                top: 290,
                child: Container(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                  width: MediaQuery.of(context).size.width,
                  height: 400,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Mount Everest",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54,
                                  fontSize: 25)),
                          Text(
                            "\$250",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 56, 72, 244),
                                fontSize: 25),
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: const [
                          Icon(
                            Icons.location_on,
                            color: Color.fromARGB(255, 56, 72, 244),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Nepal",
                            style: TextStyle(
                                color: Color.fromARGB(255, 88, 101, 244)),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Wrap(
                              children: List.generate(5, (index) {
                            return Icon(
                              Icons.star,
                              color: index < getstars
                                  ? const Color.fromARGB(255, 246, 222, 7)
                                  : Colors.grey,
                            );
                          })),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text("(4.0)",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 60, 76, 252))),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Container(
                        padding: const EdgeInsets.only(left: 6),
                        alignment: Alignment.topLeft,
                        child: const Text(
                          "People",
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 6),
                        alignment: Alignment.topLeft,
                        child: const Text(
                          "Number of people in your group",
                          style: TextStyle(
                            color: Color.fromARGB(255, 65, 154, 226),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Wrap(
                        children: List.generate(5, (index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Container(
                              margin: const EdgeInsets.only(right: 10),
                              child: AppButton(
                                color: selectedIndex == index
                                    ? Colors.white
                                    : Colors.black,
                                backgroundColor: selectedIndex == index
                                    ? Colors.black
                                    : Colors.black12,
                                size: 50,
                                borderColor: selectedIndex == index
                                    ? Colors.black
                                    : Colors.black12,
                                isIcon: false,
                                text: "${index + 1}",
                              ),
                            ),
                          );
                        }),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        padding: const EdgeInsets.only(left: 6),
                        alignment: Alignment.topLeft,
                        child: const Text(
                          "Description",
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 6),
                        alignment: Alignment.topLeft,
                        child: const Text(
                          "Even the most foreign country or faraway places aren’t light years away. The journey may appear long and intimidating, but when you take one step at a time, it’s manageable.",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black54,
                          ),
                        ),
                      )
                    ],
                  ),
                )),
            Positioned(
                bottom: 20,
                left: 20,
                child: Row(
                  children: [
                    AppButton(
                      color: Colors.black54,
                      backgroundColor: Colors.white,
                      size: 50,
                      borderColor: Colors.black54,
                      isIcon: true,
                      icon: Icons.favorite_border,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      width: 280,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 65, 154, 226),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AppText(text: "Book Trip Now", color: Colors.white),
                          const SizedBox(
                            width: 15,
                          ),
                          Image.asset(
                            "assets/images/button.png",
                            fit: BoxFit.fitHeight,
                            alignment: Alignment.centerRight,
                          )
                        ],
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
