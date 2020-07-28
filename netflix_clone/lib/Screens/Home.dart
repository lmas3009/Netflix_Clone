import 'package:flutter/material.dart';
import 'package:netflix_clone/view/video.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
    body:Container(
      color: Colors.black,
      child: ListView(children: <Widget>[
        Column(
         mainAxisAlignment: MainAxisAlignment.start,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
           Stack(
        alignment: Alignment.bottomCenter,
      children: <Widget>[
        Container(
          child: Image.asset("assets/images/first.jpg",
            fit: BoxFit.cover,
            height: 450,
          ),
          /*child: Image.network(
            'https://i.pinimg.com/564x/9a/ff/2c/9aff2c99c7cc45e5839e866addf07e88.jpg',
            fit: BoxFit.fill,
            height: double.infinity,
          ),*/
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 400,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("A NETFLIX FLIM",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),textAlign: TextAlign.center,),
                    Container(margin: const EdgeInsets.only(top: 5),),
                    Text("OUTLAW\nKING",style: TextStyle(color: Colors.grey[300],fontSize: 35,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)
                  ],
                )
              )
            ),
            Container(
              child: Padding(padding: const EdgeInsets.all(10),
              child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Middle Ages -",style: TextStyle(color: Colors.white,fontSize: 12)),
                Text("Royality -",style: TextStyle(color: Colors.white,fontSize: 12)),
                Text("War -",style: TextStyle(color: Colors.white,fontSize: 12)),
                Text("Rousing -",style: TextStyle(color: Colors.white,fontSize: 12)),
                Text("Period Piece",style: TextStyle(color: Colors.white,fontSize: 12)),
              ],
            ),),
            ),
             Container(margin: const EdgeInsets.only(top: 20),),
             Container(
               decoration: BoxDecoration(
                 boxShadow: [
                   BoxShadow(
                     blurRadius: 50,
                     color: Colors.black
                   )
                 ]
               ),
               child:Padding(padding: const EdgeInsets.only(left:40,right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Icon(Icons.add,color: Colors.white,size: 30,),
                    Container(margin: const EdgeInsets.only(top: 5),),
                    Text("My List",style: TextStyle(color: Colors.white54,fontSize: 10),)
                  ],
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Video("Q-G1BME8FKw")));
                  },
                  child: Container(
                    width: 80,
                    height: 35,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)
                    ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.play_arrow),
                          Text("Play",style: TextStyle(fontWeight: FontWeight.bold),),
                          Container(margin: const EdgeInsets.only(left: 5),),
                        ],
                      ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.info_outline,color: Colors.white),
                    Container(margin: const EdgeInsets.only(top: 5),),
                    Text("Info",style: TextStyle(color: Colors.white54,fontSize: 10),)
                  ],
                )
              ],
            ),
            ),),
                Container(margin: const EdgeInsets.only(top: 20),
            ),
          ],
        ),
      ],
    ),
    Container(
      padding: const EdgeInsets.all(15),
      child: Text("Series",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
    ),
    Container(
        height: 150.0,
        child: ListView(
        padding: EdgeInsets.only(left: 5),
        scrollDirection: Axis.horizontal,
        children: getTags(),
        shrinkWrap: false,
        ),
      ),
      Container(
        margin:  const EdgeInsets.only(top: 20),
      ),
      Divider(
        height: 2,
        color: Colors.grey
      ),
      Container(
        margin:  const EdgeInsets.only(top: 10),
      ),
    Container(
      padding: const EdgeInsets.all(15),
      child: Text("Marvel",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
    ),
       Container(
        height: 150.0,
        child: ListView(
        padding: EdgeInsets.only(left: 5),
        scrollDirection: Axis.horizontal,
        children: marvel(),
        shrinkWrap: false,
        ),
      ),
      Container(
        margin:  const EdgeInsets.only(top: 20),
      ),
      Divider(
        height: 2,
        color: Colors.grey
      ),
      Container(
        margin:  const EdgeInsets.only(top: 10),
      ),
    Container(
      padding: const EdgeInsets.all(15),
      child: Text("Trending Now",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
    ),
       Container(
        height: 150.0,
        child: ListView(
        padding: EdgeInsets.only(left: 5),
        scrollDirection: Axis.horizontal,
        children: trend(),
        shrinkWrap: false,
        ),
      ),
      Container(
        margin:  const EdgeInsets.only(top: 20),
      ),
      Divider(
        height: 2,
        color: Colors.grey
      ),
      Container(
        margin:  const EdgeInsets.only(top: 10),
      ),
    Container(
      padding: const EdgeInsets.all(15),
      child: Text("Popular on Netflix",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
    ),
       Container(
        height: 150.0,
        child: ListView(
        padding: EdgeInsets.only(left: 5),
        scrollDirection: Axis.horizontal,
        children: popular(),
        shrinkWrap: false,
        ),
      ),
      Container(
        margin:  const EdgeInsets.only(top: 20),
      ),
      Divider(
        height: 2,
        color: Colors.grey
      ),
      Container(
        margin:  const EdgeInsets.only(top: 10),
      ),
         ],
       ),
      ]
    )
    )
    );
  }
}


  List<Widget> getTags() {
    List<Widget> tags = [];
    for (int i = 1   ; i < 5; i++) {
      tags.add(
       Container(
        margin: EdgeInsets.only(left: 10),
        /*child:FlatButton(
                onPressed: (){},
                padding: EdgeInsets.all(0.0),
                child: Image.asset('assets/images/first_1.jpg',fit: BoxFit.cover,),
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(color: Colors.white, width: 0.5)
          ),
        ),*/
        child:  Material(
            // needed
            borderRadius: BorderRadius.circular(20),
            color: Colors.transparent,
            child: InkWell(
              onTap: () {}, // needed
              child: Image.asset(
                "assets/images/first_"+i.toString()+".jpg",
                width: 100,
                fit: BoxFit.fill,
              ),
            ),
          )
      ));
     /* Container(
        margin: const EdgeInsets.only(left: 10),
        width: 100,
        child: FlatButton(
                onPressed: null,
                padding: EdgeInsets.all(0.0),
                child: Image.asset('assets/images/first_1.jpg',fit: BoxFit.fill,))));*/
    }
    
    return tags;
  }

    List<Widget> popular() {
    List<Widget> tags = [];
    for (int i = 1   ; i <= 5; i++) {
      tags.add(
       Container(
        margin: EdgeInsets.only(left: 10),
        /*child:FlatButton(
                onPressed: (){},
                padding: EdgeInsets.all(0.0),
                child: Image.asset('assets/images/first_1.jpg',fit: BoxFit.cover,),
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(color: Colors.white, width: 0.5)
          ),
        ),*/
        child:  Material(
            // needed
            borderRadius: BorderRadius.circular(20),
            color: Colors.transparent,
            child: InkWell(
              onTap: () {}, // needed
              child: Image.asset(
                "assets/images/popular_"+i.toString()+".jpg",
                width: 100,
                fit: BoxFit.fill,
              ),
            ),
          )
      ));
     /* Container(
        margin: const EdgeInsets.only(left: 10),
        width: 100,
        child: FlatButton(
                onPressed: null,
                padding: EdgeInsets.all(0.0),
                child: Image.asset('assets/images/first_1.jpg',fit: BoxFit.fill,))));*/
    }
    
    return tags;
  }

List<Widget> marvel() {
    List<Widget> tags = [];
    for (int i = 1 ; i <= 5; i++) {
      tags.add(
       Container(
        margin: EdgeInsets.only(left: 10),
        /*child:FlatButton(
                onPressed: (){},
                padding: EdgeInsets.all(0.0),
                child: Image.asset('assets/images/first_1.jpg',fit: BoxFit.cover,),
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(color: Colors.white, width: 0.5)
          ),
        ),*/
        child:  Material(
            // needed
            borderRadius: BorderRadius.circular(20),
            color: Colors.transparent,
            child: InkWell(
              onTap: () {}, // needed
              child: Image.asset(
                "assets/images/marvel_"+i.toString()+".jpg",
                width: 100,
                fit: BoxFit.fill,
              ),
            ),
          )
      ));
     /* Container(
        margin: const EdgeInsets.only(left: 10),
        width: 100,
        child: FlatButton(
                onPressed: null,
                padding: EdgeInsets.all(0.0),
                child: Image.asset('assets/images/first_1.jpg',fit: BoxFit.fill,))));*/
    }
    
    return tags;
  }


    List<Widget> trend() {
    List<Widget> tags = [];
    for (int i = 1   ; i <= 5; i++) {
      tags.add(
       Container(
        margin: EdgeInsets.only(left: 10),
        /*child:FlatButton(
                onPressed: (){},
                padding: EdgeInsets.all(0.0),
                child: Image.asset('assets/images/first_1.jpg',fit: BoxFit.cover,),
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(color: Colors.white, width: 0.5)
          ),
        ),*/
        child:  Material(
            // needed
            borderRadius: BorderRadius.circular(20),
            color: Colors.transparent,
            child: InkWell(
              onTap: () {}, // needed
              child: Image.asset(
                "assets/images/trend_"+i.toString()+".jpg",
                width: 200,
                fit: BoxFit.fill,
              ),
            ),
          )
      ));
     /* Container(
        margin: const EdgeInsets.only(left: 10),
        width: 100,
        child: FlatButton(
                onPressed: null,
                padding: EdgeInsets.all(0.0),
                child: Image.asset('assets/images/first_1.jpg',fit: BoxFit.fill,))));*/
    }
    
    return tags;
  }
