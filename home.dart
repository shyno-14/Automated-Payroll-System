import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:locfinder/Components/full_page_loader.dart';
import 'package:locfinder/Components/launch_page.dart';
import 'package:locfinder/Components/login.dart';
import 'package:locfinder/Utils/colors.dart';
import 'package:locfinder/Utils/urls.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final SharedPreferences _prefs;
  int loginSt = 0; // 0 - loading, 1 - logged in, 2 - not logged in, 3 - logged in but location request failed
  String username = '';
  late double latitude;
  late double longitude;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    init();
  }

  Future<void> init() async{
    _prefs = await SharedPreferences.getInstance();
    bool status = _prefs.getBool('login_st') ?? false;
    if(status) {
      String user = _prefs.getString('username') ?? "";
      await getLoc({
        "username": user,
        "login_st": 1
      });
    } else {
      setState(() {
        loginSt = 2;
      });
    }
    // print('home.dart: login status $loginSt');
  }

  Future<void> loginCallBack(Map<String, dynamic> val) async{
    await _prefs.setString('username', val['username']);
    await _prefs.setBool('login_st', val['login_st'] == 1 ? true : false);

    await getLoc(val);
  }
  
  Future<void> getLoc(Map val) async{
    var url = Uri.parse('${ApiUrls.primary}assigned_loc.php?username=${val['username']}');
    var httpClient = HttpClient();

    try {
      var request = await httpClient.getUrl(url);
      var response = await request.close();

      if (response.statusCode == 200) {
        var jsonString = await response.transform(utf8.decoder).join();
        var data = jsonDecode(jsonString);
        // print('home.dart: ${data}');

        setState(() {
          username = val['username'];
          loginSt = val['login_st'];
          latitude = double.parse(data['data']['latitude']);
          longitude = double.parse(data['data']['longitude']);
        });
      } else {
        // print('home.dart: Error getting data: Http status ${response.statusCode}');
        setState(() {
          loginSt = 3;
        });
      }
    } catch (exception) {
      // print('home.dart: Failed invoking the POST request: $exception');
      setState(() {
        loginSt = 3;
      });
    } finally {
      httpClient.close();
    }
  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    if (loginSt == 0) {
      return const FullPageLoader();
    } else if (loginSt == 1) {
      return Scaffold(
          body: RefreshIndicator(
            onRefresh: _handleRefreshMain,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: SizedBox(
                height: height * 1.01,
                child: LaunchPage(props: {
                  'username': username,
                  "latitude": latitude,
                  "longitude": longitude
                })
              )
            ),
          )
      );
    } else if (loginSt == 3) {
      return Scaffold(
          body: RefreshIndicator(
            onRefresh: _handleRefreshMain,
            child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: SizedBox(
                    height: height * 1.01,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Center(
                          child: Icon(
                            Icons.warning,
                            size: 180,
                            color: AppColors.error,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            "Something went wrong... we are unable to fetch the location record...! \n Try refreshing the page.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppColors.subtle,
                                fontSize: 18
                            ),
                          ),
                        )
                      ],
                    )
                )
            ),
          )
      );
    } else {
      return Scaffold(
        body: SizedBox(
          height: height,
          width: width,
          child: Center(
            child: Login(callback: loginCallBack)
          )
        ),
      );
    }
  }

  Future<void> _handleRefreshMain() async {
    await _handleRefresh(context);
  }

  Future<void> _handleRefresh(context) async {
    // Perform any data fetching or refreshing tasks here
    await Future.delayed(const Duration(seconds: 2)); // Simulating a delay

    // Reload the entire page
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const HomePage()),
    );
  }
}
