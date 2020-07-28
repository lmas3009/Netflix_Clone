import 'package:flutter/material.dart';

class Download extends StatelessWidget {
  const Download({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFF000000),
       /* title: Center(
          child: Image.asset("assets/images/logo.png",height: 80,),
        ),*/
        actions: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
          Image.asset("assets/images/logo.png",height: 80,),
          Container(margin:  const EdgeInsets.only(left: 30),),
              Text("Series",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
          Container(margin:  const EdgeInsets.only(left: 10),),
              Text("Films",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
          Container(margin:  const EdgeInsets.only(left: 10),),
              Text("My List",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
          Container(margin:  const EdgeInsets.only(left: 20),),
              CircleAvatar(
                backgroundImage: NetworkImage("https://i.pinimg.com/75x75_RS/c2/66/6d/c2666df73509076e29769c279a61d1c5.jpg"),
                radius: 20,
              ),
          Container(margin:  const EdgeInsets.only(left: 10),),
            ],
          )
        ],
        //elevation: 5,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        color: Colors.black,
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Padding(padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Downloads",style: TextStyle(color: Colors.white,fontSize: 35),),
                      ]
                    )
                  )
                ),
              ]
            ),
            Column(
              children: <Widget>[
                Container(margin:  const EdgeInsets.only(top: 200),),
                Icon(Icons.cloud_download,color: Colors.white,size: 50,)
              ],
            )
          ]
        )
      ),
    );
  }
}