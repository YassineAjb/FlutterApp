import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _imageIndex = 1; // Index to track the current image

  void _changeImage() {
    setState(() {
      _imageIndex = (_imageIndex % 4) + 1; // Toggle between two images (assuming you have two images)
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "LeTAff",
            style: TextStyle(
              color: Color.fromARGB(255, 147, 61, 0),
              letterSpacing: 2.0,
              fontSize: 28.0, 
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.grey[850],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start ,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/img2.jpeg'),
            ),
            SizedBox(height: 10), // Add some space between the image and text
            Container(
              width: 400, // Specify the width of the container
              height: 400, // Specify the height of the container
              padding: const EdgeInsets.fromLTRB(1, 5, 1, 5),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 168, 62, 0), // Background color of the container
                borderRadius: BorderRadius.all(Radius.circular(10)), // Rounded corners
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 168, 62, 0),
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('images/img$_imageIndex.jpeg'), // Dynamically changing image asset
                  ),
                  SizedBox(height: 10), // Add some space between the image and text
                  Text("AI2025"),
                ],
              ),
            ),
            const SizedBox(height: 20), // Add some space between the container and the text
            Container(
              color: Color.fromARGB(255, 118, 116, 114),
              padding: const EdgeInsets.all(5),
              child: const Text(
                  "Nous sommes une agence innovante, spécialisée dans la fourniture de services numériques et desolutions web de               haute qualité."),
            ),
            // Container(
            //   color: Color.fromARGB(66, 100, 100, 100),
            //   padding: const EdgeInsets.all(5),
            //   child: const Text(
            //       "Artificial intelligence is a process of imitating human intelligence that relies on the creation and application of algorithms executed in a dynamic computing environment."),
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeImage, // Call _changeImage function when button is pressed
        child: Text("Click"),
        splashColor: Color.fromARGB(255, 168, 62, 0),
      ),
      backgroundColor:  Colors.grey[900],
    );
  }
}
