// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Center(
//             child: Text("Artificial Intelligence"),
//           ),
//           backgroundColor: Colors.deepPurple[400],
//         ),
//         body: Center(
//           child: Container(
//             width: 300, // Specify the width of the container
//             height: 300, // Specify the height of the container
//             decoration: const BoxDecoration(
//               color: Color.fromARGB(255, 165, 165, 165), // Background color of the container
//               borderRadius: BorderRadius.all(Radius.circular(10)), // Rounded corners
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black26,
//                   blurRadius: 10,
//                   offset: Offset(0, 5),
//                 ),
//               ],
//             ),
//             // child: const Image(
//             //   image: AssetImage('images/img11.webp'),
//             // ),
//             // child: const Text("Artificial Intelligence"),
//                 child: const Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Image(
//                                   image: AssetImage('images/img11.webp'),
//                                 ),
//                                 SizedBox(height: 10), // Add some space between the image and text
//                                 Text("AI2024"),
//                               ],
//                             ),
//           ),
//         ),
//         backgroundColor: Colors.deepPurple[100],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            // title: const Center(
            //   child: Text("Artificial Intelligence"),
            // ),
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
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('images/img11.webp'),
                      ),
                      SizedBox(height: 10), // Add some space between the image and text
                      Text("AI2024"),
                    ],
                  ),
                ),
                const SizedBox(height: 20), // Add some space between the container and the text
                Container(
                color: Color.fromARGB(66, 100, 100, 100),
                // alignment: Alignment.center,
                padding: const EdgeInsets.all(5),
                child: const Text("L'intelligence artificielle (IA) est un processus d'imitation de l'intelligence humaine qui repose sur la création et l'application d'algorithmes exécutés dans un environnement informatique dynamique."),
                ),
                // Container(
                // color: const Color.fromARGB(66, 78, 48, 48),
                // // alignment: Alignment.center,
                // padding: const EdgeInsets.all(5),
                // child: const Text("L'intelligence artificielle (IA) est un processus d'imitation de l'intelligence humaine qui repose sur la création et l'application d'algorithmes exécutés dans un environnement informatique dynamique."),
                // ),
              ],
            ),
          ),
          backgroundColor: Colors.deepPurple[100],
        ),
      ),
    );
  }
}
