import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:second_app/pages/details.dart';

class MyHomePage extends StatefulWidget {
  //const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Computer Knowledge"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(20),
          child: FutureBuilder(
            builder:(context,snapshot){
              var data = json.decode(snapshot.data.toString());
              return ListView.builder(itemBuilder: (BuildContext context, int index){
                return MyBox(data[index]['title'],data[index]['subtitle'],data[index]['image_url'],data[index]['detail']);
              },
              itemCount: data.length,);
            },
            future: DefaultAssetBundle.of(context).loadString('assets/data.json'),
          ) 
      ),
    );
  }

  Widget MyBox(String title, String subtitle, String picture, String detail){
    var v1, v2, v3, v4;
    v1 = title;
    v2 = subtitle;
    v3 = picture;
    v4 = detail; 
      return Container(
          margin: EdgeInsets.only(top:20),
          padding: EdgeInsets.all(20),
          height:150,
          decoration:  BoxDecoration(
              color: Colors.blue[200],
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: NetworkImage(
                    picture
                  ),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.darken)
              )
          ),
          child:Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Text(
                  title, 
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      ),
                ),
                SizedBox(height:20,),
                Text(
                    subtitle, 
                    style: TextStyle(
                        fontSize:15,
                        color: Colors.white,
                        ),
                ),
                SizedBox(height: 15,),
                TextButton(
                    onPressed: () {
                        print("next page >>");
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>DetailsPage(v1, v2, v3, v4)));
                    },
                    child:Text("read more")
                )
            ],
        ),
      );
  }
}