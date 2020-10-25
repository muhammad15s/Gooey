import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gooey_carousel/gooey_carrousel.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Gooey(),
));

class Gooey extends StatefulWidget {
  @override
  _GooeyState createState() => _GooeyState();
}

class _GooeyState extends State<Gooey> {

  Widget boardPage(String img, String description, Color color) {
    return Container(
      color: color,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(img),
            Text(description,
            textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 120,
            ),
            RaisedButton(
              color: Colors.black,
              onPressed: (){},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Text('Get Started',
                style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GooeyCarousel(
        children: [
          boardPage("images/page1.png", "Create Your Own Notes..", Color(0xFFFF9887)),
          boardPage("images/page2.png", "Share Your Notes With Friends..", Color(0xFF87D599)),
          boardPage("images/page3.png", "Protect Your Data With out Authentication System ! ", Color(0xFFC2B791)),
        ],
      ),
    );
  }
}


