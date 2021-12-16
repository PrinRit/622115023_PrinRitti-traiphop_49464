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
          child: ListView(
            children: [
                MyBox(
                    "What is a computer?",
                    "Computer is a things to calculate and for any other works.",
                    "https://cdn.pixabay.com/photo/2021/12/13/17/29/branches-6868761_960_720.jpg"
                    ),
                SizedBox(height:20,),
                MyBox(
                    "What is Flutter?",
                    "Flutter is a  tool to crate a mobile application.",
                    "https://cdn.pixabay.com/photo/2016/12/11/12/02/mountains-1899264_960_720.jpg"
                    ),
                SizedBox(height:20,),
                MyBox(
                    "What is Dart?",
                    "Dart is the language used in Flutter.",
                    "https://cdn.pixabay.com/photo/2017/03/15/13/27/rough-horn-2146181_960_720.jpg"
                ),
                SizedBox(height:20,),
            ],
        ), 
      ),
    );
  }

  Widget MyBox(String title, String subtitle, String picture){
      return Container(
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
                        Navigator.push(context,MaterialPageRoute(builder: (contest)=>DetailsPage()));
                    },
                    child:Text("read more")
                )
            ],
        ),
      );
  }
}