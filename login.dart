import 'dart:io';
import 'package:flutter/material.dart';
import 'package:locfinder/Components/loader.dart';
import 'package:locfinder/Utils/colors.dart';
import 'package:locfinder/Utils/urls.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class Login extends StatefulWidget {
  final Future<void> Function(Map<String, dynamic>) callback;
  const Login({super.key, required this.callback});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController __passwordController = TextEditingController();
  late SharedPreferences prefs;
  bool show = false;
  bool  _loadSt = false;
  Widget _topText = const Text(
    'Please login to continue!',
    style: TextStyle(
        color: AppColors.primary_light,
        fontSize: 20,
        fontWeight: FontWeight.bold
    ),
  );

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Container(
        height: height*0.6,
        width: width*0.9,
        decoration: BoxDecoration(
          color: AppColors.primary_medium,
          borderRadius: BorderRadius.circular(30)
        ),
        child:  Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: height*0.07,
                child: _topText,
              ),
              SizedBox(
                width: width*0.7,
                height: 60,//MediaQuery.of(context).size.height*0.095,
                child: TextField(
                  maxLines: null,
                  expands: true,
                  cursorColor: AppColors.primary,
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor:  AppColors.primary_light,
                      hintText: 'username...',
                      border:  OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide.none,
                      )
                  ),
                  controller: _usernameController,
                ),
              ),
              SizedBox(
                // color: Colors.red,
                width: width*0.7,
                height: 60,//MediaQuery.of(context).size.height*0.095,
                child: TextField(
                  // maxLines: null,
                  // expands: true,
                  cursorColor: AppColors.primary,
                  obscureText: !show,
                  decoration: InputDecoration(
                    // contentPadding: EdgeInsets.symmetric(vertical: 16),
                    filled: true,
                    fillColor:  AppColors.primary_light,
                    hintText: 'password...',
                    border:  const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide.none,
                    ),
                    suffixIcon: show ? IconButton(
                      onPressed: handleHide,
                      icon: const Icon(
                          color: AppColors.primary,
                          Icons.visibility_off
                      ),
                    )  : IconButton(
                      onPressed: handleShow,
                      icon: const Icon(
                          color: AppColors.primary,
                          Icons.visibility
                      ),
                    ),
                  ),
                  controller: __passwordController,
                ),
              ),
              SizedBox(
                  width: width*0.7,
                  height: 60,//MediaQuery.of(context).size.height*0.095,
                  child: ElevatedButton(
                    onPressed:  () {
                      if(!_loadSt) {
                        handleLogin();
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor:  AppColors.primary,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                    child: _loadSt ? const Loader(color: AppColors.primary_light, width:25, height: 25) : const Text(
                      'Login',
                      style: TextStyle(
                          color:  AppColors.primary_light
                      ),
                    ),
                    // child:  const Loader(color: AppColors.innerText, width:25, height: 25),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }

  void handleShow() {
    setState(() {
      show = true;
    });
  }

  void handleHide() {
    setState(() {
      show = false;
    });
  }

  void setTopText(Widget widget) {
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _topText = widget;
      });
    });
  }

  void setTopTextError(String message) {
    setState(() {
      _topText = Text(
        message,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: AppColors.error,
          fontSize: 20,
          fontWeight: FontWeight.bold),
      );
    });
  }

  Future<void> handleLogin() async {
    Widget flag = _topText;

    if(_usernameController.text == '') {
      setTopTextError('username cannot be empty.');
      setTopText(flag);
      return;
    } else if(__passwordController.text == '') {
      setTopTextError('password cannot be empty.');
      setTopText(flag);
      return;
    } else if(_usernameController.text.length > 18 || _usernameController.text.length < 9) {
      setTopTextError('username length should be between 9-18 characters.');
      setTopText(flag);
      return;
    } else if(__passwordController.text.length > 18 || __passwordController.text.length < 9) {
      setTopTextError('password length should be between 9-18 characters.');
      setTopText(flag);
      return;
    } else if(RegExp(r"\s").hasMatch(_usernameController.text)) {
      setTopTextError('username should not contain any white space.');
      setTopText(flag);
      return;
    }

    setState(() {
      _loadSt = true;
    });
    var url = Uri.parse('${ApiUrls.primary}user_login.php');
    var httpClient = HttpClient();

    Map jsonData = {
      'username': _usernameController.text,
      'password': __passwordController.text,
    };

    try {
      var request = await httpClient.postUrl(url);
      request.headers.set('content-type', 'application/json');
      request.add(utf8.encode(json.encode(jsonData)));
      var response = await request.close();

      if (response.statusCode == 201) {
        // var jsonString = await response.transform(utf8.decoder).join();
        // var data = jsonDecode(jsonString);
        // print('login.dart: $data');
        widget.callback({
          'username': _usernameController.text,
          'login_st': 1
        });
      } else {
        if(response.statusCode == 401) {
          setTopTextError('Invalid credentials');
          setTopText(flag);
          // return;
        } else {
          setTopTextError('Something went wrong... Request failed!');
          setTopText(flag);
          // return;
        }
        // print('login.dart: Error getting data: Http status ${response.statusCode}');
      }
    } catch (exception) {
      setTopTextError('Something went wrong... Request failed!');
      setTopText(flag);

      // print('login.dart: Failed invoking the POST request: $exception');
    } finally {
      httpClient.close();
      setState(() {
        _loadSt = false;
      });
    }
    //     Future.delayed(const Duration(seconds: 2), () {
    //       setState(() {
    //         _topText = flag;
    //       });
    //     });
  }
}
