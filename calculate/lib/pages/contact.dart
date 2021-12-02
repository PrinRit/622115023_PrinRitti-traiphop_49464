import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget{
    @override
    _ContectPageState createState() => _ContectPageState();
}

class _ContectPageState extends State<ContactPage>{
    @override
    Widget build(BuildContext context){
        return ListView(
            children: [
                Center(
                    child: Column(
                        children: [
                            Text("AJ Tui"),
                            Text("@CAMT: ROOM 414")
                        ]
                    )
                )
            ]
        );
    }
}