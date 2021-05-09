import 'package:flutter/material.dart';

class NameTitleCard extends StatelessWidget {
  NameTitleCard({this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              child: Text(
                title,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  color: Colors.white,
                  height: 1.5,
                  fontSize: 16,
                ),
              ),
              margin: EdgeInsets.only(
                left: 30,
                right: 30,
                top: 10.0,
                bottom: 10.0,
              ),
              padding: EdgeInsets.only(
                right: 50,
                left: 70,
                top: 10.0,
                bottom: 10.0,
              ),
              width: MediaQuery.of(context).size.width,
              height: 95,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                boxShadow: <BoxShadow>[
                  new BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(15.0),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    'assets/titleBackground.png',
                  ),
                ),
              ),
            ),
            Positioned(
              child: Image.asset(
                'assets/nameTitleLeaf.png',
                height: 100.0,
              ),
              bottom: 10.0,
              left: 20.0,
            ),
          ],
        ),
        //content list
      ],
    );
  }
}