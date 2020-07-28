import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key key}) : super(key: key);

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
                        Text("Menu",style: TextStyle(color: Colors.white,fontSize: 35),),
                      ]
                    )
                  )
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  child: Padding(padding: const EdgeInsets.all(15),
                    child: Column(
                      children: <Widget>[ 
                        Container(
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.person,color: Colors.grey,),
                              Container(margin:  const EdgeInsets.only(left: 30),),
                              Text("Profile",style: TextStyle(color: Colors.white,fontSize: 20),)
                            ],
                          ),
                        ),
                        Container(margin:  const EdgeInsets.only(top: 20),),
                         Container(
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.file_download,color: Colors.grey,),
                              Container(margin:  const EdgeInsets.only(left: 30),),
                              Text("Downloads",style: TextStyle(color: Colors.white,fontSize: 20),)
                            ],
                          ),
                        ),
                        Container(margin:  const EdgeInsets.only(top: 20),),
                         Container(
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.local_movies,color: Colors.grey,),
                              Container(margin:  const EdgeInsets.only(left: 30),),
                              Text("Films",style: TextStyle(color: Colors.white,fontSize: 20),)
                            ],
                          ),
                        ),
                        Container(margin:  const EdgeInsets.only(top: 20),),
                         Container(
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.notifications,color: Colors.grey,),
                              Container(margin:  const EdgeInsets.only(left: 30),),
                              Text("Notifications",style: TextStyle(color: Colors.white,fontSize: 20),)
                            ],
                          ),
                        ),
                        Container(margin:  const EdgeInsets.only(top: 20),),
                         Container(
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.question_answer,color: Colors.grey,),
                              Container(margin:  const EdgeInsets.only(left: 30),),
                              Text("FAQs",style: TextStyle(color: Colors.white,fontSize: 20),)
                            ],
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
                  ),
                )
              ]
            ),
          ]
        )
      ),
    );
  }
}