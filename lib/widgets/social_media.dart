import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/constants.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Wrap(
        spacing: 0.5,
              runSpacing: 0.5,
        children: [
          GestureDetector(
              onTap: () => _launchURL(StringConstants.facebookURL),
              //launchUrl(facebook as Uri),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(StringConstants.facebookimg,
                    height: 50, width: 50),
              )),

          GestureDetector(
              onTap: () => _launchURL(StringConstants.linkdenUrl),
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset(StringConstants.linkdenimg,
                    height: 50, width: 50),
              )),

               GestureDetector(
              onTap: () => _launchURL(StringConstants.twitterURL),
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset(StringConstants.twitterimg,
                    height: 50, width: 50),
              )),

               GestureDetector(
              onTap: () => _launchURL(StringConstants.githubURL),
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset(StringConstants.githubimg,
                    height: 50, width: 50),
              )),
        ],
      ),
    );
  }

  _launchURL(String facebook) async {
    final Uri url = Uri.parse(facebook);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
