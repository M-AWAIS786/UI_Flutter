import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.menu),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 1.0,
                    color: Colors.black87,
                    style: BorderStyle.solid,
                  ),
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      'Find Your',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontFamily: GoogleFonts.roboto().fontFamily),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      'Inspiration',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.roboto().fontFamily),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      child: TextField(
                        onTap: () {},
                        cursorColor: Colors.black,
                        style: TextStyle(color: Colors.black87),
                        decoration: InputDecoration(
                          focusColor: Colors.black87,
                          hintStyle: TextStyle(
                              color: Colors.black,
                              fontFamily: GoogleFonts.roboto().fontFamily),
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            size: 25,
                            color: Colors.black,
                          ),
                          hintText: "Search your're looking for",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Promo Today",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontFamily: GoogleFonts.roboto().fontFamily),
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    // color: Colors.orange,
                    height: 200,
                    child:
                        ListView(scrollDirection: Axis.horizontal, children: [
                      imageItem("assets/first_app/one.jpg"),
                      imageItem("assets/first_app/two.jpg"),
                      imageItem("assets/first_app/three.jpg"),
                      imageItem("assets/first_app/four.jpg"),
                    ]),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage("assets/first_app/three.jpg"),
                          fit: BoxFit.cover),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          // end: Alignment.topLeft,
                          stops: [0.1, 0.9],
                          colors: [
                            Colors.black.withOpacity(0.9),
                            Colors.black.withOpacity(0.1)
                          ],
                        ),
                      ),
                      child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              'Muhammad Awais',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: GoogleFonts.almendra().fontFamily,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900),
                            ),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

Widget imageItem(String image) {
  return AspectRatio(
    aspectRatio: 2.8 / 3,
    child: Container(
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              stops: [0.1, 0.9],
              colors: [
                Colors.white.withOpacity(0.4),
                Colors.white.withOpacity(0.1)
              ],
            )),
      ),
    ),
  );
}
