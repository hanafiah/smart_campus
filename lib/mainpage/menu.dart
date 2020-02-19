import 'package:flutter/material.dart';
import 'package:smart_campus/helpers/url_helper.dart';

class MenuWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Card(
        semanticContainer: true,
        child: GridView.count(
          crossAxisCount: 4,
          children: <Widget>[
            Column(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.link),
                  onPressed: () {
                    UrlHelper.openUrl('https://melaka.uitm.edu.my/v2/');
                  },
                ),
                Text('Open Link')
              ],
            ),
            Column(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.link),
                  onPressed: () {
                    UrlHelper.openUrlWebView('https://units.uitm.edu.my/aduan_add.cfm');
                  },
                ),
                Text('Web View')
              ],
            ),
            Column(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.navigation),
                  onPressed: () {
                    UrlHelper.launchMap(lat: '2.221729',long:'102.453115');
                  },
                ),
                Text('Navigation')
              ],
            ),
            Column(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.phone_android),
                  onPressed: () {
                    UrlHelper.launchCall('0190000000');
                  },
                ),
                Text('Call')
              ],
            ),
            Column(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.message),
                  onPressed: () {
                    UrlHelper.launchSms('0190000000');
                  },
                ),
                Text('SMS')
              ],
            ),
          ],
        ),
      ),
    );
  }
}

