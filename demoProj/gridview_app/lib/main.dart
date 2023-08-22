//=================================== GridView.count() ========================
// import 'package:flutter/material.dart';
//
// void main() {runApp(MyApp());}
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(appBar: AppBar(
//         title: Text("Flutter GridView Demo"),
//       ),
//         body: GridView.count(
//           crossAxisCount: 3,
//           crossAxisSpacing: 4.0,
//           mainAxisSpacing: 8.0,
//           children: List.generate(choices.length, (index) {
//               return Center(
//                 child: SelectCard(choice: choices[index]),
//               );
//             }
//           )
//         )
//       )
//     );
//   }
// }
//
// class Choice {
//   const Choice({this.title = "", this.icon = const IconData(0)});
//   final String title;
//   final IconData icon;
// }
//
// const List<Choice> choices = const <Choice>[
//   const Choice(title: 'Home', icon: Icons.home),
//   const Choice(title: 'Contact', icon: Icons.contacts),
//   const Choice(title: 'Map', icon: Icons.map),
//   const Choice(title: 'Phone', icon: Icons.phone),
//   const Choice(title: 'Camera', icon: Icons.camera_alt),
//   const Choice(title: 'Setting', icon: Icons.settings),
//   const Choice(title: 'Album', icon: Icons.photo_album),
//   const Choice(title: 'WiFi', icon: Icons.wifi),
// ];
//
// class SelectCard extends StatelessWidget {
//   const SelectCard({Key key = const Key(""), this.choice = const Choice()}) : super(key: key);
//   final Choice choice;
//
//   @override
//   Widget build(BuildContext context) {
//     final TextStyle textStyle = TextStyle(fontSize: 36, fontStyle: FontStyle.italic);
//     return Card(
//       color: Colors.orange,
//       child: Center(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             Expanded(child: Icon(choice.icon, size:50.0, color: textStyle.color)),
//             Text(choice.title, style: textStyle),
//           ]
//         ),
//       )
//     );
//   }
// }

//==================================== GridView.builder() ======================
// import 'package:flutter/material.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//
//   List<String> images = [
//     "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
//     "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
//     "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
//     "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png"
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text("Flutter GridView Demo"),
//           backgroundColor: Colors.red,
//         ),
//         body: Container(
//           padding: EdgeInsets.all(12.0),
//           child: GridView.builder(
//             itemCount: images.length,
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//                 crossAxisSpacing: 4.0,
//                 mainAxisSpacing: 4.0
//             ),
//             itemBuilder: (BuildContext context, int index){
//               return Image.network(images[index]);
//             },
//           )
//         ),
//       ),
//     );
//   }
// }

//================================== GridView.extent() =========================
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyGridScreen(),
    );
  }
}

class MyGridScreen extends StatefulWidget {
  MyGridScreen({Key key = const Key("")}) : super(key: key);

  @override
  _MyGridScreenState createState() => _MyGridScreenState();
}

class _MyGridScreenState extends State<MyGridScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter GridView Demo"),
        backgroundColor: Colors.green,
      ),
      body: Center(
          child: GridView.extent(
            primary: false,
            padding: const EdgeInsets.all(16),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            maxCrossAxisExtent: 200.0,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('First', style: TextStyle(fontSize: 20)),
                color: Colors.yellow,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Second', style: TextStyle(fontSize: 20)),
                color: Colors.blue,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Third', style: TextStyle(fontSize: 20)),
                color: Colors.blue,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Four', style: TextStyle(fontSize: 20)),
                color: Colors.yellow,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Fifth', style: TextStyle(fontSize: 20)),
                color: Colors.yellow,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text('Six', style: TextStyle(fontSize: 20)),
                color: Colors.blue,
              ),
            ],
          )),
    );
  }
}