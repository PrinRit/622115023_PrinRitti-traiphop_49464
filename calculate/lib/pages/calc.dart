import 'package:flutter/material.dart';

class CalculatePage extends StatefulWidget{
    const CalculatePage({Key? key}) : super(key: key);

    @override
    _CalculatePageState createState() => _CalculatePageState();
}

class _CalculatePageState extends State<CalculatePage>{
    TextEditingController quantity = TextEditingController();
    double price = 100000;
    TextEditingController price1 = TextEditingController();
    TextEditingController result = TextEditingController();

    @override
    void initState(){
        super.initState();
        result.text = "By X bearbricks, Because each bearbrick cost X THB, you have to pay X THB";
    }
    
    @override
    Widget build(BuildContext context){
        return ListView(
            children: [
                Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                    child: Column(
                    children: [
                    Image.asset("assets/Arrow.png"),
                    SizedBox(height:20),
                    Text("Calculator Program", 
                        style: TextStyle(
                        fontFamily:"maa", 
                        color: Colors.blue,
                        fontSize: 100,)
                    ),
                    SizedBox(height:20),
                    TextField(
                        controller: quantity,
                        decoration: InputDecoration(
                        labelText: "Bearbrick Amount", border: OutlineInputBorder()
                        )
                    ),
                    SizedBox(height:20),
                    TextField(
                        controller: price1,
                        decoration: InputDecoration(
                        labelText: "Bearbrick price", border: OutlineInputBorder()
                        )
                    ),
                    SizedBox(height:20),
                    ElevatedButton(
                        onPressed: () {
                        var cal = double.parse(quantity.text)*double.parse(price1.text);
                        print("Bearbrick quality: ${quantity.text} bearbrick cost: ${price1.text} THB Total: ${cal} THB");
                        
                        setState(() {
                            result.text = "By ${quantity.text} bearbricks, Because each bearbrick cost ${price1.text} THB, you have to pay ${cal} THB";
                        });
                        }, 
                        child: Text("Calculate")
                    ),
                    SizedBox(height:20),
                    Text("By 5 bearbrick, Because each bearbrick cost 100,000 THB, you have to pay 500,000 THB")
                    ],
                    ),
                ),
                ),
            ],
        );
    }
}