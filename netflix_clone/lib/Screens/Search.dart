import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key key}) : super(key: key);

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
                        Text("Search",style: TextStyle(color: Colors.white,fontSize: 40),),
                        Container(margin: const EdgeInsets.only(top: 50),),
                         Searchbar(),
                        Container(margin: const EdgeInsets.only(top: 30),),
                         Divider(
                           height: 2,
                           color: Colors.grey,
                         ),
                        Container(margin: const EdgeInsets.only(top: 20),),
                        Text("Recently Searched",style: TextStyle(color: Colors.white,fontSize: 15),),
                        Container(margin: const EdgeInsets.only(top: 10),),
                        Searchlist(),
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

TextEditingController _controller = new TextEditingController();

Widget Searchbar(){
  
  return Container(
    height: 50,
    width: 350,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Row(
      children: <Widget>[
        Container(margin: const EdgeInsets.only(left: 10),),
        Icon(Icons.search,size: 25,),
        Container(margin: const EdgeInsets.only(left: 20),),
        Container(
          width: 220,
          child: TextFormField(
          controller: _controller,
          decoration: InputDecoration(
            hintText: "Search",
            enabledBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            enabled: false,
            border: InputBorder.none
          ),
        ),
        ),
        Container(margin: const EdgeInsets.only(left: 10),),
        InkWell(
          onTap: (){
            _controller.clear();
          },
          child: Icon(Icons.cancel,size: 25,),
        )
      ],
    )
  );
}

Widget Searchlist(){
  return Container(
        height: 400,
        child: ListView(
        scrollDirection: Axis.vertical,
        children: listdata(),
        shrinkWrap: false,
        ),
      );
}


List<Widget> listdata() {
    List<Widget> tags = [];
    for (int i = 1; i <= 5; i++) {
      tags.add(
       Container(
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
        child:Padding(
      padding: const EdgeInsets.only(top:20,left: 10,right: 10,bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 130,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),topLeft: Radius.circular(10)),
                  border: Border.all(width: 1,color: Colors.white),
                ),
                child: Container(
                  margin: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Colors.white
                  ),
                  child: Image.asset("assets/images/popular_"+i.toString()+".jpg",fit: BoxFit.fill,),
                )
              ),
              Container(
                height: 130,
                width: 180,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 1,color: Colors.white),
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),topRight: Radius.circular(10))
                ),
                child: Padding(padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("NETFLIX Series",style: TextStyle(color: Colors.black,fontSize: 15),),
                    Text("Crown",style: TextStyle(color: Colors.black,fontSize: 20),),
                    Text("1hr 20mins",style: TextStyle(color: Colors.black,fontSize: 13),),
                    Text("25 June 2018",style: TextStyle(color: Colors.black,fontSize: 10),),
                  ],
                ),
                ),
              )
            ],
          )
        ],
      ),
    )));
     /* Container(
        margin: const EdgeInsets.only(left: 10),
        width: 100,
        child: FlatButton(
                onPressed: null,
                padding: EdgeInsets.all(0.0),
                child: Image.asset('assets/images/first_1.jpg',fit: BoxFit.fill,))));*/
    }
    for (var i=0; i<=1;i++){
      tags.add(
        Container(margin: const EdgeInsets.only(top: 30),)
      );
    }
    
    return tags;
  }
