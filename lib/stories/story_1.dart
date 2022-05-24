import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class Story_1 extends StatelessWidget {
  final Uri _url = Uri.parse('https://github.com/Rayzon3');

  _launchURL() async {
    if (!await launchUrl(_url)) throw 'Could not launch $_url';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                padding: EdgeInsets.only(top: 70),
                icon: FaIcon(FontAwesomeIcons.paperPlane),
                color: Colors.white,
                onPressed: () async {
                  await Share.share('https://github.com/Rayzon3');
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPrimary: Colors.black,
                    primary: Colors.white),
                child: const Text("Learn More"),
                onPressed: () {
                  _launchURL();
                },
              ),
            )
          ],
        ));
  }
}
