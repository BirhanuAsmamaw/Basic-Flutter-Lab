import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.purple,
        ),
        scaffoldBackgroundColor: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'BMI Calculator',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20.0),

              // Row for Gender
              Container(
                color: Colors.black, // Changed the background color to black
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Text(
                            'MALE',
                            style: TextStyle(color: Colors.white),
                          ),
                          Radio(
                            value: 'male',
                            groupValue: 'gender',
                            onChanged: (value) {},
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 50.0), // Added space between containers
                    Container(
                      child: Row(
                        children: [
                          Text(
                            'FEMALE',
                            style: TextStyle(color: Colors.white),
                          ),
                          Radio(
                            value: 'female',
                            groupValue: 'gender',
                            onChanged: (value) {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),

              // Container for Height
              Container(
                color: Colors.black, // Changed the background color to black
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(
                      '176',
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                    Slider(
                      value: 170.0,
                      min: 120.0,
                      max: 220.0,
                      onChanged: (value) {},
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),

              // Row for Weight and Age
              Container(
                color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'WEIGHT (kg)',
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    SizedBox(width: 20),
                    Flexible(
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'AGE',
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              // Calculate Button
              Container(
                color: Colors.blue,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'CALCULATE',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.purple,
          child: Container(
            height: 50.0,
          ),
        ),
      ),
    );
  }
}
