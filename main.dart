// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:locfinder/Components/full_page_loader.dart';
// import 'package:locfinder/Components/no_connection.dart';
// import 'package:locfinder/Pages/home.dart';
// import 'package:connectivity_plus/connectivity_plus.dart';
//
// void main() {
//   runApp(const MyApp());
//
//   // Listen for changes in internet connectivity
//   Connectivity().onConnectivityChanged.listen((List<ConnectivityResult> results) {
//     connectivityStream.add(results.first);
//   });
// }
//
// StreamController<ConnectivityResult> connectivityStream = StreamController<ConnectivityResult>();
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return StreamBuilder<ConnectivityResult>(
//       stream: connectivityStream.stream,
//       builder: (context, snapshot) {
//         // Check the connection status and return the appropriate widget
//         print('main.dart: ${snapshot.data}');
//         if(snapshot.data == null) {
//           print('main.dart: in the if statement');
//           return const MaterialApp(home:  FullPageLoader());
//         } else if (snapshot.hasData && snapshot.data == ConnectivityResult.none) {
//           // Show a widget indicating no internet connection
//           print('main.dart: in the else if statement');
//           return const MaterialApp(home: const NoConnection());
//         } else {
//           // Show the main app content
//           print('main.dart: in the else statement');
//           return const MaterialApp(home: const HomePage());
//         }
//       },
//     );
//   }
// }


import 'dart:async';
import 'package:flutter/material.dart';
import 'package:locfinder/Components/full_page_loader.dart';
import 'package:locfinder/Components/no_connection.dart';
import 'package:locfinder/Pages/home.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {

  bool serviceEnabled = false;
  bool permission = false;
  bool connectivity = false;
  final StreamController<bool> dependencyStream = StreamController<bool>();
  late Timer _timer;
  int counter = 0;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _startTimer();
      });
    });
  }

  @override
  void dispose() {
    _stopTimer();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) async {
      var connectivityResult = await Connectivity().checkConnectivity();
      bool connection = connectivityResult[0] != ConnectivityResult.none;
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      LocationPermission permission = await Geolocator.checkPermission();
      // print('main.dart: the connectivity result in the timer ${connectivityResult[0]} --- $connection');

      init({
        'connection': connection,
        'permission': permission != LocationPermission.denied && permission != LocationPermission.deniedForever,
        'service': serviceEnabled
      });
      dependencyStream.add(serviceEnabled && permission != LocationPermission.denied && permission != LocationPermission.deniedForever && connection);
    });
  }

  void _stopTimer() {
    _timer.cancel();
  }

  Future<void> init(Map<String, bool> status) async{

    if(counter < 1 && !permission) {
      counter += 1;
      await Geolocator.requestPermission();
    } else if(counter == 1 && !serviceEnabled && permission) {
      counter += 1;
      await Geolocator.openLocationSettings();
    }

    setState(() {
      serviceEnabled = status['service'] ?? false;
      permission = status['permission'] ?? false;
      connectivity = status['connection'] ?? false;
    });

  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      stream: dependencyStream.stream,
      builder: (context, snapshot) {
        // Check the connection status and return the appropriate widget
        // print('main.dart: ${snapshot.data}');
        if(snapshot.data == null) {
          // print('main.dart: in the if statement');
          return const MaterialApp(home:  FullPageLoader());
        } else if (snapshot.hasData && snapshot.data == false) {
          // Show a widget indicating no internet connection
          // print('main.dart: in the else if statement');
          return MaterialApp(home:  NoConnection(
            props: {
              "internet": connectivity,
              "location_service": serviceEnabled,
              "location_permission": permission,
            }
          ));
        } else {
          // print('main.dart: in the else statement');
          return const MaterialApp(home:  HomePage());
        }
      },
    );
  }
}