import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:table_calendar/table_calendar.dart';

class AssignmentScreen extends StatelessWidget {
  const AssignmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 242, 242),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        title: const Text(
          "Assignment",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    15,
                  ),
                ),
                child: TableCalendar(
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: DateTime.now(),
                  calendarFormat: CalendarFormat.month,
                ),
              ),
              const SizedBox(height: 15),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Assignment (10)",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      // fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 80,
                        width: 75,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(20, 0, 255, 8),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: FaIcon(
                            FontAwesomeIcons.react,
                            size: 60,
                            color: Color.fromARGB(255, 1, 255, 9),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Theoretical Physics",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          const Text(
                            "To download PDF, click here",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              // fontSize: 20,
                              color: Colors.grey,
                            ),
                          ),
                          TextButton.icon(
                              onPressed: null,
                              icon: const FaIcon(
                                FontAwesomeIcons.filePdf,
                                color: Color.fromARGB(255, 0, 255, 8),
                              ),
                              label: const Text(
                                "Download pdf",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 0, 255, 8),
                                ),
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 80,
                        width: 75,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(19, 0, 38, 255),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(
                          Icons.pix,
                          size: 60,
                          color: Color.fromARGB(162, 119, 0, 255),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Mathematics Hometask",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          const FittedBox(
                            child: Text(
                              "Completed mathematics homework ..",
                              softWrap: false,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                // fontSize: 20,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          TextButton.icon(
                              onPressed: null,
                              icon: const FaIcon(
                                FontAwesomeIcons.filePdf,
                                color: Color.fromARGB(255, 98, 0, 255),
                              ),
                              label: const Text(
                                "Download pdf",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 98, 0, 255),
                                ),
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 80,
                          width: 75,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(28, 255, 0, 85),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Icon(
                            Icons.sports_gymnastics_rounded,
                            size: 60,
                            color: Color.fromARGB(192, 255, 0, 85),
                          )),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Theoretical Physics",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          const Text(
                            "To download PDF, click here",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              // fontSize: 20,
                              color: Colors.grey,
                            ),
                          ),
                          TextButton.icon(
                            onPressed: null,
                            icon: const FaIcon(
                              FontAwesomeIcons.filePdf,
                              color: Color.fromARGB(192, 255, 0, 85),
                            ),
                            label: const Text(
                              "Download pdf",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(192, 255, 0, 85),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
