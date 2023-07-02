import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trialapplication/app/theme/app_string.dart';
import 'package:trialapplication/app/theme/app_theme.dart';

class SigningScreen extends StatefulWidget {
  const SigningScreen({super.key});

  @override
  State<SigningScreen> createState() => _SigningScreenState();
}

class _SigningScreenState extends State<SigningScreen> {
  bool value = false;

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
                  themeDesc.copyWith(color: Colors.purple[300], fontSize: 28),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(padding: EdgeInsets.fromLTRB(10, 80, 0, 0)),
              ElevatedButton(
                  onPressed: () => {},
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                      backgroundColor: Colors.blue[900],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.facebookF,
                        color: Colors.white,
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                      Text('Facbook')
                    ],
                  )),
              const Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
              ElevatedButton(
                onPressed: () => {},
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.googlePlusG,
                      color: Colors.white,
                    ),
                    Padding(padding: EdgeInsets.fromLTRB(10, 0, 0, 0)),
                    Text('Google')
                  ],
                ),
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
          SizedBox(
            width: width / 1.25,
            child: const TextField(
              obscureText: true,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                enabledBorder: OutlineInputBorder(
                  gapPadding: 50,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(width: 2, color: Colors.purple),
                ),
                labelText: 'Email',
                hintText: 'Email',
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0)),
          SizedBox(
            width: width / 1.25,
            child: const TextField(
              obscureText: true,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                enabledBorder: OutlineInputBorder(
                  gapPadding: 50,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(width: 2, color: Colors.purple),
                ),
                labelText: 'Password',
                hintText: 'Password',
              ),
            ),
          ),
          Row(
            children: [
              Checkbox(
                value: this.value,
                onChanged: (bool? value) {
                  setState(() {
                    this.value = value ?? true;
                    print(value);
                  });
                },
              ),
              Text(
                LoginScreen().rememberMe,
                style: themeDesc.copyWith(color: Colors.purple, fontSize: 15),
              )
            ],
          ),
        ],
      ),
    );
  }
}

// class SigningScreen extends StatelessWidget {
//   const SigningScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
    
//   }
  
