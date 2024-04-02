import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Card Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Flutter',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: CardWidget(),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Image.asset(
            'assets/image.png', // replace 'assets/image.jpg' with your image path
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 3),
                Text(
                  '1975 Porsche 911 Carrera',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.thumb_up, color: Colors.blue),
                          SizedBox(width: 5),
                          Text(
                            '0',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.message, color: Colors.blue),
                          SizedBox(width: 5),
                          Text(
                            '0',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.arrow_forward, color: Colors.blue),
                          SizedBox(width: 5),
                          Text(
                            'Share',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Essential Information',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      '1 of 3 done',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 2,
                  color: Colors.black,
                  margin: EdgeInsets.symmetric(vertical: 10),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Year, Make, Model, VIN',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.edit,
                      color: Colors.blue,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    buildInformationRow('Year', '1975'),
                    buildInformationRow('Make', 'Porsche'),
                    buildInformationRow('Model', '911 Carrera'),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 16, color: Colors.black),
                          children: [
                            TextSpan(
                              text: 'VIN: ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: '9115400029',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 2,
                  color: Colors.black,
                  margin: EdgeInsets.symmetric(vertical: 10),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                      ),
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Description',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.edit,
                      color: Colors.blue,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                      ),
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Photos',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.edit,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildInformationRow(String title, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: RichText(
        text: TextSpan(
          style: TextStyle(fontSize: 16, color: Colors.black),
          children: [
            TextSpan(
              text: '$title: ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextSpan(
              text: value,
            ),
          ],
        ),
      ),
    );
  }
}
