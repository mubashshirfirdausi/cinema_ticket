

import 'package:flutter/material.dart';
import 'ActorCard.dart';
import 'ActorPage.dart';

class CastPage extends StatelessWidget {
  const CastPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Color.fromARGB(238, 239, 241, 255),
      appBar: AppBar(elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_rounded,color: Colors.black87,),
        ),
        title: Text(
          "Cast",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [

              Text("Cast",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              GestureDetector(
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
                child: Hero(
                  tag: 'actor1',
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
        ),
      ),
    ));
  }
}
