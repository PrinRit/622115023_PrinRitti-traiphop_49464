import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
    const HomePage({Key? key}) : super(key: key);

    @override
    _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
    @override
    Widget build(BuildContext context){
        return ListView(
            children: [
                Center(
                    child: Text("Home Page"),
                )
            ]
        );
    }
}