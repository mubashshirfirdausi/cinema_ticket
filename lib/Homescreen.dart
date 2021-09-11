import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cinema_ticket/ActorCard.dart';
import 'package:flutter/rendering.dart';
import 'ActorPage.dart';
import 'CastPage.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _detailButton = true;
  bool _showtimeButton = false;
  bool _detailVisible = true;
  bool _showtimeVisible = false;
  bool bookmarkIconstate = true;
  Icon bookmarkIcon = Icon(Icons.bookmark_outline_rounded);

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        backgroundColor: Color.fromARGB(238, 239, 241, 255),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Stack(
                children: [
                  Card(
                    shadowColor: Colors.blueGrey,
                    margin: EdgeInsets.all(0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 20,
                    color: Colors.black,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      child: Image.asset("images/movie.jpg"),
                    ),
                  ),
                  Positioned(
                    bottom: 55,
                    right: 45,
                    child: IconButton(
                      onPressed: (){},
                      icon: Icon(
                        CupertinoIcons.play_circle_fill,
                        color: Colors.amber,
                        size: 70,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 30,
                    right: 10,
                    child: IconButton(
                      icon: Icon(
                        CupertinoIcons.clear_thick_circled,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "IMDb",
                              style: TextStyle(
                                backgroundColor: Colors.amberAccent,
                                fontSize: 13,
                              ),
                            ),
                            Text(" 8.4")
                          ],
                        ),
                        Text(
                          "John Wick: Chapter 3-Parabellum",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w900),
                        ),
                        Text("Action, Crime, Thriller"),
                        Text("USA 2019 / 2h 10min / PG-16"),
                      ],
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          bookmarkIconstate
                              ? bookmarkIcon = Icon(Icons.bookmark)
                              : bookmarkIcon =
                                  Icon(Icons.bookmark_outline_rounded);
                          bookmarkIconstate = !bookmarkIconstate;
                        });
                      },
                      icon: bookmarkIcon,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(Size(20, 45)),
                          elevation: MaterialStateProperty.all<double>(10),
                          backgroundColor: MaterialStateProperty.all<Color>(
                            _showtimeButton ? Colors.blue : Colors.white,
                          ),
                        ),
                        child: Text(
                          'Showtimes',
                          style: TextStyle(
                              fontSize: 14,
                              color:
                                  _showtimeButton ? Colors.white : Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          setState(
                            () {
                              _showtimeButton = true;
                              _detailButton = false;
                              _detailVisible = false;
                              _showtimeVisible = true;
                            },
                          );
                        },
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        // autofocus: true,
                        // color: _detailButton ? Colors.blue : Colors.white,
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(Size(20, 45)),
                          elevation: MaterialStateProperty.all<double>(10),
                          backgroundColor: MaterialStateProperty.all<Color>(
                            _detailButton ? Colors.blue : Colors.white,
                          ),
                        ),
                        child: Text(
                          'Details',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: _detailButton ? Colors.white : Colors.black,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            _detailButton = true;
                            _showtimeButton = false;
                            _detailVisible = true;
                            _showtimeVisible = false;
                          });
                        },
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Visibility(
                  visible: _detailVisible,
                  // maintainSize: true,
                  // maintainAnimation: true,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "Story",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "In this third installment of the adrenaline-fueled action franchise, skilled assassin John Wick (Keanu Reeves) returns with a dollar 14 million price tag on his head and an army of bounty-hunting killers on his trail. After killing a member of the shadowy international assassin's guild, the High Table, John Wick is excommunicado, but the world's most ruthless hit men and women await his every turn.",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Visibility(
                  visible: _showtimeVisible,
                  // maintainSize: true,
                  // maintainAnimation: true,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "ShowTimings",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "ShowTimings",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                  alignment: Alignment.topRight,
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return CastPage();
                          },
                        ),
                      );
                    },
                    child: Text(
                      "Full Cast >",
                      style: TextStyle(color: Colors.blueGrey),
                    ),
                  )),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Hero(
                      tag: 'actor1',
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return ActorPage();
                              },
                            ),
                          );

                        },
                        child: ActorCard(
                          imageLocation: "images/kaenu.jpg",
                          name: "Kaenu Reeves",
                        ),
                      ),
                    ),
                    Hero(
                      tag: 'actor2',
                      child: ActorCard(
                        imageLocation: "images/halle.jpg",
                        name: "Halle Berry",
                      ),
                    ),
                    Hero(
                      tag: 'actor3',
                      child: ActorCard(
                        imageLocation: "images/kaenu.jpg",
                        name: "Kaenu Reeves",
                      ),
                    ),
                    ActorCard(
                      imageLocation: "images/halle.jpg",
                      name: "Halle Berry",
                    ),
                    ActorCard(
                      imageLocation: "images/kaenu.jpg",
                      name: "Kaenu Reeves",
                    ),
                    ActorCard(
                      imageLocation: "images/halle.jpg",
                      name: "Halle Berry",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: BottomNavigationBar(
            iconSize: 23,
            selectedFontSize: 16,
            selectedItemColor: Colors.blueAccent,
            unselectedItemColor: Colors.grey,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.bolt_fill),
                label: 'Trending',
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.film),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.tickets_fill),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.bookmarks),
                label: '',
                backgroundColor: Colors.red,
              ),
            ],
          ),
        ));
  }
}
