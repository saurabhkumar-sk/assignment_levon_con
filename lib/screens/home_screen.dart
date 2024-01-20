import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    TextStyle linearPerTextStyle = const TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: Colors.grey,
    );

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 242, 242),
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 242, 242, 242),
        title: const Text(
          "Home",
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Stack(
              children: [
                CircleAvatar(
                  backgroundImage:
                      AssetImage("assets/images/profile_image.jpg"),
                ),
                Positioned(
                    right: 5, child: Badge(backgroundColor: Colors.green))
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Hello Maqsud!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 212,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        const Text(
                          "Attendence",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: RotatedBox(
                            quarterTurns: 2,
                            child: CircularPercentIndicator(
                              radius: 45,
                              center: const RotatedBox(
                                quarterTurns: 2,
                                child: Text(
                                  "80%",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              progressColor: Colors.green,
                              percent: 0.8,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "View  ",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.black,
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 212,
                    width: MediaQuery.of(context).size.width * 0.45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        const Text(
                          "Fee",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: RotatedBox(
                            quarterTurns: 2,
                            child: CircularPercentIndicator(
                              radius: 45,
                              center: const RotatedBox(
                                quarterTurns: 2,
                                child: Text(
                                  "60%",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              progressColor: Colors.yellow,
                              percent: 0.6,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        const SizedBox(
                          width: 100,
                          child: TextButton(
                            style: ButtonStyle(
                              shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(6),
                                  ),
                                ),
                              ),
                              backgroundColor: MaterialStatePropertyAll(
                                Colors.black,
                              ),
                            ),
                            onPressed: null,
                            child: Text(
                              "Pay Fee",
                              style: TextStyle(
                                color: Colors.white,
                                // fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15),
              Container(
                // height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Homework",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 223, 223, 223),
                                ),
                                borderRadius: BorderRadius.circular(5)),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "  Weekly",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down_rounded,
                                  color: Colors.grey,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              RotatedBox(
                                quarterTurns: 3,
                                child: LinearPercentIndicator(
                                  width: 180,
                                  lineHeight: 11,
                                  percent: 0.7,
                                  progressColor: Colors.purple,
                                  backgroundColor:
                                      const Color.fromARGB(107, 218, 216, 216),
                                  barRadius: const Radius.circular(15),
                                ),
                              ),
                              Text(
                                "Sat",
                                style: linearPerTextStyle,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              RotatedBox(
                                quarterTurns: 3,
                                child: LinearPercentIndicator(
                                  width: 180,
                                  lineHeight: 11,
                                  percent: 0.5,
                                  progressColor: Colors.purple,
                                  backgroundColor:
                                      const Color.fromARGB(107, 218, 216, 216),
                                  barRadius: const Radius.circular(15),
                                ),
                              ),
                              Text(
                                "Sun",
                                style: linearPerTextStyle,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              RotatedBox(
                                quarterTurns: 3,
                                child: LinearPercentIndicator(
                                  width: 180,
                                  lineHeight: 11,
                                  percent: 0.4,
                                  progressColor: Colors.purple,
                                  backgroundColor:
                                      const Color.fromARGB(107, 218, 216, 216),
                                  barRadius: const Radius.circular(15),
                                ),
                              ),
                              Text(
                                "Mon",
                                style: linearPerTextStyle,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              RotatedBox(
                                quarterTurns: 3,
                                child: LinearPercentIndicator(
                                  width: 180,
                                  lineHeight: 11,
                                  percent: 0.6,
                                  progressColor: Colors.purple,
                                  backgroundColor:
                                      const Color.fromARGB(107, 218, 216, 216),
                                  barRadius: const Radius.circular(15),
                                ),
                              ),
                              Text(
                                "Tue",
                                style: linearPerTextStyle,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              RotatedBox(
                                quarterTurns: 3,
                                child: LinearPercentIndicator(
                                  width: 180,
                                  lineHeight: 11,
                                  percent: 0.8,
                                  backgroundColor:
                                      const Color.fromARGB(107, 218, 216, 216),
                                  progressColor: Colors.purple,
                                  barRadius: const Radius.circular(15),
                                ),
                              ),
                              Text(
                                "Wed",
                                style: linearPerTextStyle,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              RotatedBox(
                                quarterTurns: 3,
                                child: LinearPercentIndicator(
                                  width: 180,
                                  lineHeight: 11,
                                  percent: 0.2,
                                  backgroundColor:
                                      const Color.fromARGB(107, 218, 216, 216),
                                  progressColor: Colors.purple,
                                  barRadius: const Radius.circular(15),
                                ),
                              ),
                              Text(
                                "Thu",
                                style: linearPerTextStyle,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "School Updates",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "View all",
                    style: TextStyle(
                      // fontSize: 25,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 7),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 101,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            10,
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(33, 0, 255, 8),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Icon(
                                Icons.newspaper,
                                color: Color.fromARGB(255, 0, 255, 8),
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "News",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "6  ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      height: 101,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            10,
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(30, 255, 0, 255),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Icon(
                                Icons.event,
                                color: Color.fromARGB(154, 255, 0, 174),
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Events",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "6  ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      height: 101,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            10,
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(55, 170, 0, 255),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Icon(
                                  Icons.speaker,
                                  color: Color.fromARGB(184, 119, 0, 255),
                                )),
                            const SizedBox(height: 10),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Buletin",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "6  ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Container(
                      height: 101,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            10,
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(55, 0, 255, 8),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Icon(
                                Icons.newspaper,
                                color: Color.fromARGB(255, 0, 255, 8),
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "News",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "6  ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
