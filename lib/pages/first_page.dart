import 'package:flutter/material.dart';
import 'package:travelbuddy/widgets/boldtext.dart';

import 'package:travelbuddy/widgets/textuse.dart';

import 'item_mainpage.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  List images = ["welcome2.png", "welcome.png", "welcome3.jpg"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          // it builds the page in such way that you can get many other views on scroll or can say its kinda scroll view
          scrollDirection: Axis.vertical, // decides the scrolling
          itemCount: images.length,
          // counts the scroll or can say number pages to be included in page builder
          itemBuilder: (context, index) {
            //Actual page starts here
            const SizedBox(
              height: 20,
            );
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/${images[index]}",
                      ),
                      fit: BoxFit.fitHeight)),
              child: Container(
                margin: const EdgeInsets.only(top: 80, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          BoldText(text: "Trips", color: Colors.black),
                          AppText(
                              text: "Mountain",
                              size: 30,
                              color: Colors.black54),
                          // ignore: sized_box_for_whitespace
                          Container(
                            width: 250,
                            child: AppText(
                                text:
                                    "Travel makes one modest, you see what a tiny place you occupy in the world.",
                                color: Colors.black26),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const MainPage()));
                            }, //**************************** */
                            child: Container(
                              width: 100,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromARGB(255, 65, 154, 226),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/button.png",
                                    fit: BoxFit.fill,
                                    alignment: Alignment.center,
                                  )
                                ],
                              ),
                            ),
                          )
                        ]),
                    Column(
                      children: List.generate(3, (indexdots) {
                        return Container(
                          width: 8,
                          margin: const EdgeInsets.all(8),
                          height: index == indexdots ? 25 : 8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color.fromARGB(255, 65, 154, 226)),
                        );
                      }),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
