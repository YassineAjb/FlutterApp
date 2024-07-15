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
      _imageIndex = (_imageIndex % 3) + 1; // Toggle between two images (assuming you have two images)
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Artificial Intelligence",
            style: TextStyle(
              color: Color.fromARGB(255, 78, 33, 33), // Change this to your desired color
            ),
          ),
        ),
        backgroundColor: Colors.deepPurple[400],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300, // Specify the width of the container
              height: 300, // Specify the height of the container
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 165, 165, 165), // Background color of the container
                borderRadius: BorderRadius.all(Radius.circular(10)), // Rounded corners
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
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
                  Text("AI2024"),
                ],
              ),
            ),
            const SizedBox(height: 20), // Add some space between the container and the text
            Container(
              color: Color.fromARGB(66, 100, 100, 100),
              padding: const EdgeInsets.all(5),
              child: const Text(
                  "Artificial intelligence is a process of imitating human intelligence that relies on the creation and application of algorithms executed in a dynamic computing environment."),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeImage, // Call _changeImage function when button is pressed
        child: Text("Click"),
        splashColor: Colors.black,
      ),
      backgroundColor: Colors.deepPurple[100],
    );
  }
}
