import 'package:flutter/material.dart';

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:url_launcher/url_launcher.dart';

import 'package:personal_website/src/text/footer_link.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Future<void> _launchurl(String surl) async {
  final Uri url = Uri.parse(surl);
  await launchUrl(url, webOnlyWindowName: "_self");
}

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AdaptiveTheme.of(context).theme.colorScheme.tertiary,
      padding: const EdgeInsets.all(40.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                MediaQuery.of(context).size.width > 600
                    ? Text(
                        "Made with <3 by 3_n |  Hosted on GitHub Pages",
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              fontSize: 16, color: Colors.white),
                        ),
                        softWrap: true,
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Made with <3 by 3_n",
                                style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                                softWrap: true,
                              ),
                              // const FlutterLogo(),
                            ],
                          ),
                          Text(
                            "Hosted on GitHub Pages",
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                  fontSize: 16, color: Colors.white),
                            ),
                            softWrap: true,
                          ),
                        ],
                      ),
                const SizedBox(height: 8),
                Wrap(
                  direction: Axis.horizontal,
                  children: [
                    IconButton(
                      onPressed: () async {
                        await _launchurl(links["email"]!);
                      },
                      icon: FaIcon(
                        FontAwesomeIcons.envelope,
                        color: AdaptiveTheme.of(context)
                            .theme
                            .colorScheme
                            .onTertiary,
                      ),
                      tooltip: "Email",
                    ),
                    IconButton(
                      onPressed: () async {
                        await _launchurl(links["linkedin"]!);
                      },
                      icon: FaIcon(
                        FontAwesomeIcons.linkedin,
                        color: AdaptiveTheme.of(context)
                            .theme
                            .colorScheme
                            .onTertiary,
                      ),
                      tooltip: "LinkedIn",
                    ),
                    IconButton(
                      onPressed: () async {
                        await _launchurl(links["facebook"]!);
                      },
                      icon: FaIcon(
                        FontAwesomeIcons.facebook,
                        color: AdaptiveTheme.of(context)
                            .theme
                            .colorScheme
                            .onTertiary,
                      ),
                      tooltip: "Facebook",
                    ),
                    IconButton(
                      onPressed: () async {
                        await _launchurl(links["instagram"]!);
                      },
                      icon: FaIcon(
                        FontAwesomeIcons.instagram,
                        color: AdaptiveTheme.of(context)
                            .theme
                            .colorScheme
                            .onTertiary,
                      ),
                      tooltip: "Instagram",
                    ),
                    IconButton(
                      onPressed: () async {
                        await _launchurl(links["github"]!);
                      },
                      icon: FaIcon(
                        FontAwesomeIcons.github,
                        color: AdaptiveTheme.of(context)
                            .theme
                            .colorScheme
                            .onTertiary,
                      ),
                      tooltip: "GitHub",
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
