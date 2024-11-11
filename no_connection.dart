import 'package:flutter/material.dart';
import 'package:locfinder/Utils/colors.dart';

class NoConnection extends StatefulWidget {
  final Map<dynamic, dynamic> props;
  const NoConnection({super.key, required this.props});

  @override
  NoConnectionState createState() => NoConnectionState();
}

class NoConnectionState extends State<NoConnection> {

  var textStyle = const TextStyle(
      color: AppColors.subtle,
      fontSize: 18
  );

  var bullet = const Icon(
    Icons.add,
    size: 11,
    color: AppColors.subtle,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.warning,
              size: 180,
              color: AppColors.warning,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "You need to enable the following permissions and services for this app to work properly.",
                textAlign: TextAlign.center,
                style: textStyle,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                widget.props['internet'] ? Container() : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    bullet,
                    Text(
                      "  Network connection.",
                      style: textStyle
                    )
                  ],
                ),
                widget.props['location_service'] ? Container() : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    bullet,
                    Text(
                      "  Location service.",
                      style: textStyle
                    )
                  ],
                ),
                widget.props['location_permission'] ? Container() : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    bullet,
                    Text(
                      "  Location permission.",
                      style: textStyle
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
