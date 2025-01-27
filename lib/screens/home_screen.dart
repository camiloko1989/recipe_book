import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
          _RecipesCard(context),
          _RecipesCard(context)
        ],)
    );
  }
  Widget _RecipesCard(BuildContext context){
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
        width: MediaQuery.of(context).size.width,
        height: 125,
        child: Card(
            child: Row(
          children: <Widget>[
            Container(
                height: 125,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(),
                )),
            SizedBox(
              width: 26,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Lasagna", style: TextStyle(fontSize: 16, fontFamily: 'Quicksand') ,),
                SizedBox(height: 4,),
                Text("Camilo J.",style: TextStyle(fontSize: 16, fontFamily: 'Quicksand'),),
                Container(
                  height: 2,
                  width: 75,
                  color: Colors.orange,
                ),
                SizedBox(height: 4,),
                
              ],
            )
          ],
        )),
            ),
      );
  }
}
