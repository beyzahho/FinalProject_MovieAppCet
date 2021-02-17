import 'package:flutter/material.dart';
import 'package:movie_info_app/components/body.dart';
import 'package:movie_info_app/constants.dart';



class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: Body(),
    );
  }

   AppBar buildAppBar() {
     return AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading:  IconButton(
          padding: EdgeInsets.only(left: kDefaultPadding),
                   onPressed: () {
                   },
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),

          actions: <Widget>[
            IconButton(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                   onPressed: () {
                   },
              icon: Icon(
               Icons.search,
                color: Colors.black,
              ),
           ),
          ],
        );
     }
   }
