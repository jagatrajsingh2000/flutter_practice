// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'New Whatsapp UI',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF171717),
      body: Stack(children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70, left: 5, right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 10),
                children: [
                  HeaderBulttons(message: "Message", color: Colors.white),
                  const SizedBox(width: 35),
                  HeaderBulttons(message: "Online", color: Colors.grey),
                  const SizedBox(width: 35),
                  HeaderBulttons(message: "Group", color: Colors.grey),
                  const SizedBox(width: 35),
                  HeaderBulttons(message: "Message", color: Colors.grey),
                ],
              ),
            )
          ],
        ),
        Positioned(
          top: 190,
          left: 0,
          right: 0,
          child: Container(
            height: 220,
            padding: EdgeInsets.only(top: 15,left: 25, right: 25),
            decoration: BoxDecoration(
                color: Color(0xFF27c1a9),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Favourite contacts',
                  style: TextStyle(color: Colors.white),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 90,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                        radius: 29,
                        backgroundImage: Image.asset('assets/images/img1.jpeg').image,
                      )
                      ],
                    )
                  ],
                ),
              )
            ]),
          ),
        )
      ]),
    );
  }

  // ignore: non_constant_identifier_names
  TextButton HeaderBulttons({required String message, required Color color}) {
    return TextButton(
      onPressed: () {},
      child: Text(
        message,
        style: TextStyle(color: color, fontSize: 32),
      ),
    );
  }
}
