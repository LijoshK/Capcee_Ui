import 'package:capcee/Views/widget2_pg.dart';
import 'package:flutter/material.dart';

class Widget1pg extends StatefulWidget {
  const Widget1pg({Key? key}) : super(key: key);

  @override
  State<Widget1pg> createState() => _Widget1pgState();
}

class _Widget1pgState extends State<Widget1pg> {
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
          color: Colors.black,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: Text("Widget 1",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),)),
                ),
                SizedBox(
                  height: 285,
                ),
                Center(
                  child: InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Widget2pg(),));
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
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
