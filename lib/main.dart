import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Body3(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(22.0), 
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(
            child: Container(
                padding: EdgeInsets.only(top: 0),
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.all(
                        Radius.circular(20))),
                child: Image.asset("assets/music.png")),
          ),
          Padding(
            padding: EdgeInsets.only(top: 0.0), 
            child: Text(
              "Peter Mach",
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 0.0), 
            child: Text(
              "Mind Deep Relax",
              style: TextStyle(
                  fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            "Join the Community as we prepare over 33 days to relax and feel joy with the mind and happnies session across the World.",
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 22.0), 
            padding: EdgeInsets.symmetric(vertical: 4.0), 
            decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius:
                    BorderRadius.all(Radius.circular(100))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.play_arrow_outlined,
                    color: Colors.white,
                    size: 23, 
                  ),
                ),
                Text(
                  'Play Next Session',
                  style: TextStyle(
                      fontSize: 22, color: Colors.white),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(
                        Radius.circular(17))), 
                padding: EdgeInsets.all(13), 
                child: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 17, 
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "SweetMemories",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26),
                  ),
                  Text(
                    "December 29 Pre-Launch",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              Expanded(
                child: Container(),
              ),
              Icon(
                Icons.more_horiz_sharp,
                color: Colors.grey,
                size: 42, 
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 3),
            width: double.infinity,
            height: 1,
            color: Colors.grey.withOpacity(0.2),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.0),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.all(
                          Radius.circular(17))),
                  padding: EdgeInsets.all(13), 
                  child: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "A Day Dream",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 26),
                    ),
                    Text(
                      "December 29 Pre-Launch",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(),
                ),
                Icon(
                  Icons.more_horiz_sharp,
                  color: Colors.grey,
                  size: 38, 
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 3),
            width: double.infinity,
            height: 1,
            color: Colors.grey.withOpacity(0.2),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.0),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.all(
                          Radius.circular(17))), 
                  padding: EdgeInsets.all(13), 
                  child: Icon(
                    Icons.play_arrow,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 13, 
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mind Explore",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 26), 
                    ),
                    Text(
                      "December 29 Pre-Launch",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(),
                ),
                Icon(
                  Icons.more_horiz_sharp,
                  color: Colors.grey,
                  size: 42, 
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 3),
            width: double.infinity,
            height: 1,
            color: Colors.grey.withOpacity(0.2),
          ),
        ]),
      ),
    );
  }
}
class Body2 extends StatelessWidget {
  const Body2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 5,
          title: const Text(
            "Meditate",
            style: TextStyle(color: Colors.black, fontSize: 28),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(
                Icons.search,
                color: Colors.black,
                size: 28,
              ),
            )
          ],
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        ),
        body: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Padding(
            padding: EdgeInsets.all(13.0),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  child: Text(
                    "All",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 11.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.teal[100],
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    child: Text(
                      "Bible in year",
                      style: TextStyle(color: Colors.teal),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 11.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.teal[100],
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    child: Text(
                      "Dailies",
                      style: TextStyle(color: Colors.teal),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.teal[100],
                        borderRadius: BorderRadius.all(Radius.circular(17))),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    child: Text(
                      "Minutes",
                      style: TextStyle(color: Colors.teal),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.teal[100],
                        borderRadius: BorderRadius.all(Radius.circular(17))),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    child: Text(
                      "Novem",
                      style: TextStyle(color: Colors.teal),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 320,
            width: 400,
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: Image.asset(
                      "assets/moonsun.png",
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    child: Card(
                      elevation: 0,
                      margin: EdgeInsets.all(0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 10.0, top: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "A Song of Moon",
                                  maxLines: 1,
                                  overflow: TextOverflow.fade,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Starts with basics",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 20),
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 10),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.favorite_border,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "9 Sessions",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Spacer(),
                                Text(
                                  "Start",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 10,
                                  color: Colors.grey,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 210,
                width: 170,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(55))),
                      child: Image.asset(
                        "assets/birdsorange.png",
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.only(left: 10.0, top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "The Sleep Hour",
                                    maxLines: 1,
                                    overflow: TextOverflow.fade,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Ashna Mukherjee",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 10.0, left: 10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.favorite_border,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "3 Sessions",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Spacer(),
                                  Text(
                                    "Start",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 10,
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              SizedBox(
                height: 210,
                width: 170,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      child: Image.asset(
                        "assets/moon.png",
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.only(left: 20.0, top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Easy on the Mission",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Peter March",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(top: 8.0, right: 10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.favorite_border,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "5 Minutes",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Spacer(),
                                  Text(
                                    "Start",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 10,
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 300,
                width: 170,
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      child: Image.asset(
                        "assets/planet.png",
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.only(left: 20.0, top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Relax With Me",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Amanda James",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 10.0, left: 10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.favorite_border,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "3 Sessions",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Spacer(),
                                  Text(
                                    "Start",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 10,
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              SizedBox(
                height: 300,
                width: 170,
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      child: Image.asset(
                        "assets/birdsblue.png",
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                      ),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.only(left: 10.0, top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Sun and Energy",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Micheal Hiu",
                                    style: TextStyle(
                                        color: Colors.grey, fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.only(top: 10.0, right: 10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.favorite_border,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "5 minutes",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Spacer(),
                                  Text(
                                    "Start",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 10,
                                    color: Colors.grey,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ])));
  }
}
class Body3 extends StatelessWidget {
  const Body3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          backgroundColor: Color.fromRGBO(3, 168, 152, 1),
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 105),
                  child: Center(
                    child: Text(
                      "medinow",
                      textScaleFactor: 3,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 75.0, top: 15),
                  child: Center(
                    child: Text(
                      "Meditate With Us!",
                      style: TextStyle(color: Colors.white),
                      textScaleFactor: 1.25,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: ElevatedButton(
                    onPressed: () => null,
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Text("Sign in with Apple",
                          style: TextStyle(color: Colors.black)),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white, shape: StadiumBorder()),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                  child: ElevatedButton(
                    onPressed: () => null,
                    child: Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Text("Continue with Email or Phone",
                          style: TextStyle(color: Colors.black)),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(205, 253, 254, 1),
                        shape: StadiumBorder()),
                  ),
                ),
                TextButton(
                    onPressed: () => null,
                    child: Text(
                      "Continue With Google",
                      style: TextStyle(color: Colors.white),
                    )),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset("assets/google.png"),
                  ),
                )
              ],
            ),
          )),
    );
  }
}

