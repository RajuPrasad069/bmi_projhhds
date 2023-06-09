import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var weightController = TextEditingController();
  var feetController = TextEditingController();
  var inchController = TextEditingController();
  var result = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 34,color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                keyboardType: TextInputType.phone,
                controller: weightController,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.navigate_next,color: Colors.black,),
                    hintText: 'Enter Your Weight(In Kg)',
                    label: Text("weight"),
                    labelStyle: TextStyle(color: Colors.black),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(23)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(23)
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                keyboardType: TextInputType.phone,
                controller: feetController,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.navigate_next,color: Colors.black,),
                    hintText: 'Enter Your Height(In feet)',
                    label: Text("Height"),
                    labelStyle: TextStyle(color: Colors.black),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(23)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(23)
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextField(
                keyboardType: TextInputType.phone,
                controller: inchController,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.navigate_next,color: Colors.black,),
                    hintText: 'Enter Your Height(In inch)',
                    label: Text("Height"),
                    labelStyle: TextStyle(color: Colors.black),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(23)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(23)
                    )
                ),
              ),
            ),
            SizedBox(height: 44,),
            GestureDetector(
              onTap: (){
                var weight = weightController.text.toString();
                var feet = feetController.text.toString();
                var inch = inchController.text.toString();

                if(weight!= "" && feet!= "" && inch!= "" ){
                  var intweight = int.parse(weight);
                  var intfeet = int.parse(feet);
                  var intinch = int.parse(inch);

                  var totalinches = (intfeet*12)+intinch;
                  var totalcentiM = totalinches*2.54;
                  var totalmeter = totalcentiM/100;

                  var bmi = intweight/totalmeter*totalmeter;

                  setState(() {
                    result = "Your BMI is >> :  ${bmi.toStringAsFixed(2)}";
                  });

                }
                else{
                  setState(() {
                    result = "Value Enter Please !!";
                  });
                }
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(23)
                ),
                height: 55,
                width: 370,
                child: Center(
                    child: Text("Calculate",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold),)),
              ),
            ),
            SizedBox(height: 34,),
            Text("$result",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),)
          ],
        ),
      ),
    );
  }
}
