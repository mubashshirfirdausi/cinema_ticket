import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:cinema_ticket/ActorCard.dart';
import 'package:flutter/painting.dart';

class ActorPage extends StatefulWidget {
  @override
  _ActorPageState createState() => _ActorPageState();
}

class _ActorPageState extends State<ActorPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ActorPage",
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Hero(
                    tag: 'actor1',
                    child: Card(
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
                        child: Image.asset("images/kaenu.jpg"),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 30,
                    right: 10,
                    child: IconButton(
                      icon: Icon(
                        CupertinoIcons.clear_thick_circled,
                        color: Colors.black87,
                        size: 30,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Keanu Reeves",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
                    ),
                    Text("54 years old",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Bio",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Keanu Charles Reeves, whose first name means 'cool breeze over the mountains' in Hawaiian, was born September 2, 1964 in Beirut, Lebanon. He is the son of Patricia Taylor, a showgirl and costume designer, and Samuel Nowlin Reeves, a geologist. Keanu's father was born in Hawaii, of British, Portuguese, Native Hawaiian, and Chinese ancestry, and Keanu's mother is originally from England. After his parents' marriage dissolved, Keanu moved with his mother and younger sister, Kim Reeves, to New York City, then Toronto. Stepfather #1 was Paul Aaron, a stage and film director - he and Patricia divorced within a year, after which she went on to marry (and divorce) rock promoter Robert Miller and hair salon owner Jack Bond. Reeves never reconnected with his biological father. In high school, Reeves was lukewarm toward academics but took a keen interest in ice hockey (as team goalie, he earned the nickname 'The Wall') and drama. He eventually dropped out of school to pursue an acting career.",
                      style: TextStyle(fontSize: 16,letterSpacing: 1),
                    ),
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
