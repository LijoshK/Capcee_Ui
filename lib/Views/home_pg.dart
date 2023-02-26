import 'package:capcee/Views/widget1_pg.dart';
import 'package:capcee/Views/widget2_pg.dart';
import 'package:flutter/material.dart';

class Homepg extends StatefulWidget {
  const Homepg({Key? key}) : super(key: key);

  @override
  State<Homepg> createState() => _HomepgState();
}

class _HomepgState extends State<Homepg> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double x = size.height / 2;
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        title: Center(
            child: Text(
          "Home",
          style: TextStyle(color: Colors.black),
        )),
      ),
      body: Column(
        children: [
          Container(
            height: x = size.height / 2.45,
            color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Widget1",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(height: 15,),
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Widget1pg(),
                      ));
                    },
                    child: Container(
                      height: 50,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: Center(
                        child: Text("Next Page"),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
          Container(
            height: x = size.height / 2.4,
            color: Colors.green[400],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Widget2",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(height: 15,),
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Widget2pg(),
                      ));
                    },
                    child: Container(
                      height: 50,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Colors.blueGrey,
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: Center(
                        child: Text("Next Page"),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          )
          // Center(
          //   child: InkWell(
          //     onTap: (){
          //       Navigator.of(context).push(MaterialPageRoute(builder: (context) => Widget2pg(),));
          //     },
          //     child: Container(
          //       height: 50,
          //       width: 80,
          //       decoration: BoxDecoration(
          //           color: Colors.blueGrey,
          //           borderRadius: BorderRadius.all(Radius.circular(12))),
          //       child: Center(child: Text("Next Page"),),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
