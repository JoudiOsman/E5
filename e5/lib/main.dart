import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.blue,
          centerTitle: true,
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Page',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Pasta',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondPage()),
              );
            },
            child: Text('View Recipe'),
          ),
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double imageHeight = screenWidth * 0.5;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Second Page',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: imageHeight,
            child: Image.asset(
              'assets/pasta_image.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: imageHeight,
            bottom: 0,
            left: 0,
            right: 0,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    // Author information
                    Row(
                      children: [
                        Text(
                          'Author: ',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Joudi Osman',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    // First Description
                    Text(
                      'Description:',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'A small generic paragraph 1.',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 20),
                    // Second Description
                    Text(
                      'Ingredients:',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '1.Pasta  2.Chicken Breast  3. Sauce  4.Bell Pepper   5. Olive Oil  6. Salt & Pepper',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Time to Cook:',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '45 Minutes',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 20),
                    // Scrollable content
                    Text(
                      'Directions',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Text(
                      '1. Dice Bell Pepper\n'
                      '2. 2 Chicken Breasts\n'
                      '3. Oil Pan\n'
                      '4. Cook Diced Chicken Breast and Diced Pell Pepper with Salt & Pepper in the pan\n'
                      '5. Boil Pasta\n'
                      '6. Strain Pasta\n'
                      '7. Add Strained Pasta, Cooked Chicken and Cooked Bell Pepper to pot\n'
                      '8. Cook for 20-30 Minutes\n'
                      '9. Let sit for 10 minutes\n'
                      '10. Enjoy',    
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}