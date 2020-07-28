import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:netflix_clone/Screens/Home.dart';
import 'package:netflix_clone/Screens/Navbar/bottomnav.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 10,
      navigateAfterSeconds: new Intro(),
      /*title: new Text('Welcome In SplashScreen',
      style: new TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20.0
      ),),*/
      //imageBackground:NetworkImage("https://img.cinemablend.com/filter:scale/quill/6/d/1/2/c/f/6d12cfc1c447be06b2c0368562429be8f0a7f3bf.jpg"),
      image: Image.asset("assets/images/logo.png"),
      backgroundColor: Colors.black,
      photoSize: 150.0,
      loaderColor: Colors.red
    );
  }
}

class Intro extends StatelessWidget {
  const Intro({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0x44000000),
        elevation: 1,
        actions: <Widget>[
          Container(
            width: 27,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Netflix_2015_N_logo.svg/185px-Netflix_2015_N_logo.svg.png"),
                fit: BoxFit.fill,
              ),
          ),
          ),
          Container(margin: const EdgeInsets.only(left: 110),),
          Center(
            child:Row(
              children: [
                InkWell(
                  onTap: (){},
                  child: Text("PRIVACY",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                ),
                Container(margin: const EdgeInsets.only(left: 15),),
                InkWell(
                  onTap: (){},
                  child: Text("HELP",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                ),
                Container(margin: const EdgeInsets.only(left: 15),),
                InkWell(
                  onTap: (){},
                  child: Text("SIGN IN",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                ),
                Container(margin: const EdgeInsets.only(left: 10),),
              ],
            )
          )
        ],
        
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        alignment: Alignment.bottomCenter,
      children: <Widget>[
        Container(
          child: Image.asset("assets/images/back1.jpg",
            fit: BoxFit.fill,
            height: double.infinity,
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
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.transparent,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 70,
                    color: Colors.black87
                  )
                ]
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Unlimited enterainment,one low \n price",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),textAlign: TextAlign.center,),
                    Container(margin: const EdgeInsets.only(top: 25),),
                    Text("Stream and download as much as you\nwant, no extra fees.",style: TextStyle(color: Colors.white,fontSize: 15),textAlign: TextAlign.center,)
                  ],
                )
              )
            ),
                Container(margin: const EdgeInsets.only(top: 40),),
            InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottomnav()));
                  },
                child:Container(
                  width: 350,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.red[800],
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Center(
                    child: Text("GET STARTED",style: TextStyle(color: Colors.white,fontSize: 20,fontStyle: FontStyle.normal ),),
                  )
                ),
                ),
                Container(margin: const EdgeInsets.only(top: 20),
            ),
          ],
        )
      ],
    ),
    );
  }
}