import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:locfinder/Utils/colors.dart';

class FullPageLoader extends StatefulWidget {
  const FullPageLoader({super.key});

  @override
  State<FullPageLoader> createState() => _FullPageLoaderState();
}

class _FullPageLoaderState extends State<FullPageLoader> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: const Center(
          child: SpinKitWaveSpinner(
            color: AppColors.primary,
            trackColor: AppColors.primary_light,
            waveColor: AppColors.primary,
            size: 125.0,
          ),
        ),
      ),
    );
  }
}
