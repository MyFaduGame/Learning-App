import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trialapplication/app/screens/home_scree.dart';
import 'package:trialapplication/app/theme/app_string.dart';
import 'package:trialapplication/app/theme/app_theme.dart';

class SigningScreen extends StatelessWidget {
  const SigningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  color: Colors.purple,
                  iconSize: 30,
                  icon: const Icon(Icons.arrow_back_ios)),
              const Padding(padding: EdgeInsets.fromLTRB(100, 0, 0, 0)),
              Text(
                LoginScreen().loginAppBar,
                style: themeTitle,
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
          Center(
            child: Text(
              LoginScreen().learningApp,
              style: themeTitle,
            ),
          ),
          const Padding(padding: EdgeInsets.fromLTRB(0, 40, 0, 0)),
          Center(
            child: Text(
              LoginScreen().logDetails,
              textAlign: TextAlign.center,
              style:
                  themeDesc.copyWith(color: Colors.purple[300], fontSize: 25),
            ),
          ),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () => {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                    backgroundColor: Colors.blue[900],
                    // shape: RoundedRectangleBorder(
                    //     borderRadius: BorderRadius.circular(20))
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.facebookF,
                        color: Colors.white,
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                      Text('Facbook')
                    ],
                  )),
              ElevatedButton(
                onPressed: () => {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                  backgroundColor: Colors.purple,
                  // shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(20))
                ),
                child: const Text('Start Learning'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
