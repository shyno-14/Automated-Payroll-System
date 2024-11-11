import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:locfinder/Utils/colors.dart';
// import 'package:locfinder/Utils/location.dart';
import 'package:locfinder/Utils/urls.dart';

class LaunchPage extends StatefulWidget {
  final Map<String, dynamic> props;
  const LaunchPage({super.key, required this.props});

  @override
  State<LaunchPage> createState() => _LaunchPageState();
}

class _LaunchPageState extends State<LaunchPage> with TickerProviderStateMixin {

  // Animation variables...🔽
  double  _slideAnimationVal = 0.2;
  double  _slideAnimationVal2 = 0.0;
  late AnimationController _animationController;
  late Animation<double>  _slideAnimation;
  late Animation<double>  _slideAnimation2;
  // Animation variables...🔼

  int status = 0;// 0 - inert, 1 - loading, 2 - success, 3 - location failure, 4 - request failure.

  Animation<double> createAnimation(double begin, double end, double curveBegin, double curveEnd,) {
    return Tween<double>(begin: begin, end: end).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Interval(curveBegin, curveEnd, curve: Curves.linear),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // print('launch_page.dart: the slide animation value -- $_slideAnimationVal');
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 700),
      vsync: this,
    );
    // _animationController.reset();

    _slideAnimation = createAnimation( _slideAnimationVal, 0.1, 0.0, 0.75)
      ..addListener(() {
        setState(() {
          _slideAnimationVal =  _slideAnimation.value;
        });
      });

    _slideAnimation2 = createAnimation( _slideAnimationVal2, 0.1, 0.75, 1.0)
      ..addListener(() {

        // only for debugging purposes...
        // print('launch_page.dart: the slide animation value in the second animation -- $_slideAnimationVal');
        // print('launch_page.dart: the slide animation2 value in the second animation -- $_slideAnimationVal2');
        // print('launch_page.dart: the total value in the second animation -- ${_slideAnimationVal + _slideAnimationVal2}');

        setState(() {
          _slideAnimationVal2 =  _slideAnimation2.value;
        });
      });
    // _animationController.forward();
  }


  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // height and width parameters for dry purposes...
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return SizedBox(
      height: height,
      width: width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: height*0.25,
            width: width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Hey there ${widget.props['username']}!",
                  style: const TextStyle(
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 25
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: height*0.75,
            width: width*0.6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: height*(_slideAnimationVal + _slideAnimationVal2),
                ),
                SizedBox(
                  height: height*0.29,
                  width: width*0.6,
                  child: ElevatedButton(
                    onPressed: () {
                      if(status == 0){// work as a button only if the status is inert
                        handleButtonCLick();
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: status == 2 ? AppColors.success : status >=3 ? AppColors.error : AppColors.primary,
                      shape: const CircleBorder(),
                    ),
                    child: Text(
                      // Location failure means the user is outside the assigned location. Request failure means the user is in the assigned location, but the request for attendance is either incomplete or encountering server or network errors.
                      status == 1 ? "Loading..." : status == 2 ? "Success..." : status == 3 ? "Location Failure" : status == 4 ? "Request Failure" : "Add attendance",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 30,
                          color: AppColors.white
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Future<void> handleButtonCLick() async{


    // _animationController.reset();
    _animationController.repeat();
    setState(() {
      status = 1;
    });

    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best);

    double currentLat = position.latitude;
    double currentLon = position.longitude;

    double distanceInMeters = Geolocator.distanceBetween(currentLat, currentLon, widget.props['latitude'], widget.props['longitude']);
    // print('launch_page.dart: latitude: $currentLat - ${widget.props['latitude']}, longitude: $currentLon - ${widget.props['longitude']}, distance: $distanceInMeters');

    if(distanceInMeters <= 10){
      var url = Uri.parse('${ApiUrls.primary}add_attendance.php');
      var httpClient = HttpClient();

      Map jsonData = {
        'username': widget.props['username']
      };

      try {
        var request = await httpClient.postUrl(url);
        request.headers.set('content-type', 'application/json');
        request.add(utf8.encode(json.encode(jsonData)));
        var response = await request.close();

        if (response.statusCode == 201) {
          await Future.delayed(const Duration(seconds: 3));
          // var jsonString = await response.transform(utf8.decoder).join();
          // var data = jsonDecode(jsonString);
          // print('login.dart: $data');
          _animationController.reset();
          setState(() {
            status = 2;
          });
        } else {
          // print('login.dart: Error getting data: Http status ${response.statusCode}');
          _animationController.reset();
          setState(() {
            status = 4;
          });
        }
      } catch (exception) {
        // print('login.dart: Failed invoking the POST request: $exception');
        _animationController.reset();
        setState(() {
          status = 4;
        });
      } finally {
        httpClient.close();
      }
    } else {
      _animationController.reset();
      setState(() {
        status = 3;
      });
    }

    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        status = 0;
      });
    });
  }

}
