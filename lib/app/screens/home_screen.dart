import 'package:flutter/material.dart';
import 'package:trialapplication/app/screens/signing_screen.dart';
import 'package:trialapplication/app/theme/app_images.dart';
import 'package:trialapplication/app/theme/app_string.dart';
import 'package:trialapplication/app/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                color: Colors.white,
                height: height / 4,
                width: width,
                child: Image(
                  image: AssetImage(HomeImagesString().defaultImage),
                )),
            const Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
            Text(
              HomeScreenString().homeTitle,
              style: themeTitle,
            ),
            const Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
            Text(
              HomeScreenString().homeDesc,
              style: themeDesc,
            ),
            const Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SigningScreen()));
              },
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                  backgroundColor: Colors.purple,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              child: const Text('Start Learning'),
            ),
          ],
        ),
      ),
    );
  }
}
