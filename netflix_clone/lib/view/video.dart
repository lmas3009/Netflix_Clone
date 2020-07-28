import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// ignore: must_be_immutable
class Video extends StatelessWidget {
  Video(this.id);
  String id;
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
                        Container(margin: const EdgeInsets.only(top: 10),),
                        video(id),
                        Container(margin: const EdgeInsets.only(top: 30),),
                        Text("OutLaw King",style: TextStyle(color: Colors.white,fontSize: 25),),
                        Text("1hr 25min",style: TextStyle(color: Colors.white,fontSize: 20),),
                        Text("Film",style: TextStyle(color: Colors.white,fontSize: 15),),
                        Container(margin: const EdgeInsets.only(top: 15),),
                        Text("Information:",style: TextStyle(color: Colors.white,fontSize: 25),),
                        Text("OutLaw King is a 2018 historical action drama film about Robert the Bruce, the 14th-century Scottish King who launched a guerilla war against the larger English army. The film largely takes place during the 3-year historical period from 1304, when Bruce decides to rebel against the rule of Edward I over Scotland, thus becoming an outlaw, up to the 1307 Battle of Loudoun Hill.",style: TextStyle(color: Colors.white,fontSize: 15),textAlign: TextAlign.left,),
                        Container(margin: const EdgeInsets.only(top: 15),),
                        Padding(padding: const EdgeInsets.all(50),
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Icon(Icons.add,color: Colors.white,),
                                Text("Add",style: TextStyle(color: Colors.white,fontSize: 15),)
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Icon(Icons.favorite,color: Colors.white,),
                                Text("Like",style: TextStyle(color: Colors.white,fontSize: 15),)
                              ],
                            ),
                            
                          ],
                        )
                        )
                      ],
                    )
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget video(String id){
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: id,
    flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
        enableCaption: true
    ),
);
  return YoutubePlayer(
      controller: _controller,
      showVideoProgressIndicator: true,
      progressIndicatorColor: Colors.blueAccent,
    );
}