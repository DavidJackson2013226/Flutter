//======================================= indeterminate progressbar ==============================

// import 'package:flutter/material.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: LinearProgressIndicatorApp(),
//     );
//   }
// }
//
// class LinearProgressIndicatorApp extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return LinearProgressIndicatorAppState();
//   }
// }
//
// class LinearProgressIndicatorAppState extends State<LinearProgressIndicatorApp> {
//   bool _loading = false;
//
//   @override
//   void initState() {
//     super.initState();
//     _loading = false;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Flutter Linear Progress Bar"),
//       ),
//       body: Center(
//         child: Container(
//           padding: EdgeInsets.all(12.0),
//           child: _loading ? LinearProgressIndicator() : Text(
//               "Press button for downloading",
//               style: TextStyle(fontSize: 25)),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             _loading = !_loading;
//           });
//         },
//         tooltip: 'Download',
//         child: Icon(Icons.cloud_download),
//       ),
//     );
//   }
// }

//============================== determinate progressbar =====================================
// import 'dart:async';
// import 'package:flutter/material.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: LinearProgressIndicatorApp(),
//     );
//   }
// }
//
// class LinearProgressIndicatorApp extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return LinearProgressIndicatorAppState();
//   }
// }
//
// class LinearProgressIndicatorAppState extends State<LinearProgressIndicatorApp> {
//   bool _loading = false;
//   double _progressValue = 0;
//
//   @override
//   void initState() {
//     super.initState();
//     _loading = false;
//     _progressValue = 0.0;
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Flutter Linear Progress Bar"),
//       ),
//       body: Center(
//         child: Container(
//           padding: EdgeInsets.all(12.0),
//           child: _loading
//               ? Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               LinearProgressIndicator(
//                 backgroundColor: Colors.cyanAccent,
//                 valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
//                 value: _progressValue,
//               ),
//               Text('${(_progressValue * 100).round()}%'),
//             ],
//           )
//               : Text("Press button for downloading", style: TextStyle(fontSize: 25)),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             _loading = !_loading;
//             _updateProgress();
//           });
//         },
//         tooltip: 'Download',
//         child: Icon(Icons.cloud_download),
//       ),
//     );
//   }
//   // this function updates the progress value
//   void _updateProgress() {
//     const oneSec = const Duration(seconds: 1);
//     new Timer.periodic(oneSec, (Timer t) {
//       setState(() {
//         _progressValue += 0.1;
//         // we "finish" downloading here
//         if (_progressValue.toStringAsFixed(1) == '1.0') {
//           _loading = false;
//           t.cancel();
//           return;
//         }
//       });
//     });
//   }
// }

//===================================== indeterminate Circle Progressbar ===================================
// import 'package:flutter/material.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Flutter Progress Bar Example'),
//         ),
//         body: Center(
//             child: CircularProgressIndicatorApp()
//         ),
//       ),
//     );
//   }
// }
//
// /// This is the stateless widget that the main application instantiates.
// class CircularProgressIndicatorApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return CircularProgressIndicator(
//       backgroundColor: Colors.red,
//       strokeWidth: 8,);
//   }
// }
//===================================== determinate Circle Progressbar ===================================
import 'dart:async';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CircularProgressIndicatorApp(),
    );
  }
}

class CircularProgressIndicatorApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CircularProgressIndicatorAppState();
  }
}

class CircularProgressIndicatorAppState extends State<CircularProgressIndicatorApp>{
  bool _loading = false;
  double _progressValue = 0.0;

  @override
  void initState() {
    super.initState();
    _loading = false;
    _progressValue = 0.0;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Circular Progress Bar"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(14.0),
          child: _loading
              ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(
                strokeWidth: 10,
                backgroundColor: Colors.yellow,
                valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
                value: _progressValue,
              ),
              Text('${(_progressValue * 100).round()}%'),
            ],
          )
              : Text("Press button for downloading", style: TextStyle(fontSize: 25)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _loading = !_loading;
            _updateProgress();
          });
        },
        child: Icon(Icons.cloud_download),
      ),
    );
  }
  // this function updates the progress value
  void _updateProgress() {
    const oneSec = const Duration(seconds: 1);
    new Timer.periodic(oneSec, (Timer t) {
      setState(() {
        _progressValue += 0.2;
        // we "finish" downloading here
        if (_progressValue.toStringAsFixed(1) == '1.0') {
          _loading = false;
          t.cancel();
          return;
        }
      });
    });
  }
}