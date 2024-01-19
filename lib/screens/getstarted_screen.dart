import 'package:flutter/material.dart';
import 'package:levon_consulting_assignment/screens/dashboard.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 250),
            Center(
              child: Container(
                color: Colors.red,
                child: Image.asset(
                  "assets/images/Screenshot 2024-01-19 221242.png",
                ),
              ),
            ),
            const Text(
              "Education for complexity",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            ConstrainedBox(
              constraints: BoxConstraints.tight(
                const Size(350, 100),
              ),
              child: const Text(
                "Instant, Accurate Communication between school management, staff, parents and students with the Student-Alert portal and app",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 60),
            ElevatedButton(
              style: const ButtonStyle(
                minimumSize:
                    MaterialStatePropertyAll(Size(double.infinity, 55)),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                ),
                backgroundColor: MaterialStatePropertyAll(
                  Color.fromARGB(255, 2, 1, 19),
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DashBoardScrren(),
                    ));
              },
              child: const Text(
                "Get started",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
