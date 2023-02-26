import 'package:capcee/Views/home_pg.dart';
import 'package:capcee/Views/widget1_pg.dart';
import 'package:flutter/material.dart';

class Widget2pg extends StatefulWidget {
  const Widget2pg({Key? key}) : super(key: key);

  @override
  State<Widget2pg> createState() => _Widget2pgState();
}

class _Widget2pgState extends State<Widget2pg> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    double a = size.height / 6;
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(height:size.height/1.99,
            color: Colors.yellow[400],
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: Text("Widget 2",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                ),
                SizedBox(
                  height: 285,
                ),
                Center(
                  child: InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Widget1pg(),));
                    },
                    child: Container(
                      height: 50,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: Center(child: Text("Next Page"),),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: size.height/2.89,
            color: Colors.green[400],
          )
        ],
      ),
    );
  }
}
