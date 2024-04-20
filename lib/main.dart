import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[200], // Blue background color for the full body
        appBar: AppBar(
          title: Text(
            'Weather Forecast',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,

              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.blue[900], // Dark blue color
          centerTitle: true, // Center align the title
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center, // Align children to the center
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter City Name',
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(Icons.search, color: Colors.blue),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none, // Remove the border
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
                onSubmitted: (String value) {
                  // You can handle the submitted value here
                  print('Submitted: $value');
                },
              ),
              SizedBox(height: 15), // Add space between the TextField and the text below
              Text(
                'Pushkin 154, Taraz',
                style: TextStyle(
                  fontSize: 37,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[800], // Dark blue color
                ),
              ),
              Text(
                'Friday, April 19, 2024',
                style: TextStyle(fontSize: 22, color: Colors.blue[900]),
              ),
              SizedBox(height: 10), // Add space between the text and the icon
              Center( // Center the sun icon and temperature text
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center, // Align children to the center
                  children: [
                    Icon(
                      Icons.wb_sunny_outlined,
                      size: 120,
                      color: Colors.yellow[700],
                    ),
                    SizedBox(width: 10), // Add space between the icon and the text
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start
                      children: [
                        Text(
                          '14°F',
                          style: TextStyle(fontSize: 85, color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 23), // Adjust padding to move text to the right
                          child: Text(
                            'Light Snow',
                            style: TextStyle(fontSize: 26, color: Colors.grey[700]), // Darker grey color
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10), // Add space between the elements and the icons below
              Row(
                mainAxisAlignment: MainAxisAlignment.center, // Align children to the center
                children: [
                  Column(
                    children: [
                      Icon(Icons.ac_unit, size: 60, color: Colors.blue[900]), // Snow icon
                      SizedBox(height: 10),
                      Text('5', style: TextStyle(color: Colors.white, fontSize: 34)), // Text '5'
                      Text('km/hr', style: TextStyle(color: Colors.blue[900],fontSize: 27)), // Text 'km/hr'
                    ],
                  ),
                  SizedBox(width: 60), // Add wider space between the icons
                  Column(
                    children: [
                      Icon(Icons.ac_unit, size: 60, color: Colors.blue[900]), // Snow icon
                      SizedBox(height: 10),
                      Text('3', style: TextStyle(color: Colors.white, fontSize: 34)), // Text '3'
                      Text('%', style: TextStyle(color: Colors.blue[900],fontSize: 27)), // Text '%'
                    ],
                  ),
                  SizedBox(width: 60), // Add wider space between the icons
                  Column(
                    children: [
                      Icon(Icons.ac_unit, size: 60, color: Colors.blue[900]), // Snow icon
                      SizedBox(height: 10),
                      Text('20', style: TextStyle(color: Colors.white, fontSize: 34)), // Text '20'
                      Text('%', style: TextStyle(color: Colors.blue[900], fontSize:27)), // Text '%'
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10), // Add space between the elements and the text below
              Text(
                '7 DAY WEATHER FORECAST',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10), // Add space between the text and the buttons
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    WeatherButton('Monday', '6°F', Icons.sunny,),
                    WeatherButton('Tuesday', '5°F', Icons.cloud),
                    WeatherButton('Wednesday', '4°F', Icons.water),
                    WeatherButton('Thursday', '-5°F', Icons.cloud),
                    WeatherButton('Friday', '6°F', Icons.sunny),
                    WeatherButton('Saturday', '3°F', Icons.cloud),
                    WeatherButton('Sunday', '17°F', Icons.sunny),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WeatherButton extends StatelessWidget {
  final String day;
  final String temperature;
  final IconData icon;

  WeatherButton(this.day, this.temperature, this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              padding: EdgeInsets.all(12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Column(
              children: [
                Icon(icon, size: 30, color: Colors.black),
                SizedBox(height: 2),
                Text(
                  day,
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ],
            ),
          ),

          Text(
            temperature,
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
