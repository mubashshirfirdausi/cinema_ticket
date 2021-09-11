import 'package:flutter/material.dart';
import 'main.dart';

class ActorCard extends StatelessWidget {
  String name;
  String imageLocation;
  ActorCard({required this.imageLocation, required this.name});
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      elevation: 10,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Image.asset(
              "$imageLocation",
              height: 60,
              width: 60,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "$name",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
          )
        ],
      ),
    );
  }
}
