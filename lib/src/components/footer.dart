import 'package:flutter/material.dart';

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:url_launcher/url_launcher.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Future<void> _launchurl(String surl) async {
  final Uri url = Uri.parse(surl);
  await launchUrl(url);
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
                        "Made with <3 by 3_n using Flutter  |  Hosted on GitHub Pages",
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
                                "Made with <3 by 3_n w/ ",
                                style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                                softWrap: true,
                              ),
                              const FlutterLogo(),
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
                        await _launchurl("mailto:cychandt@connect.ust.hk");
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
                        await _launchurl(
                            "https://www.linkedin.com/in/chung-yuk-chan-6a2742241/");
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
                        await _launchurl(
                            "https://www.facebook.com/chungyuk.chan.5");
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
                        await _launchurl(
                            "https://www.instagram.com/f.prime.of.x/");
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
                        await _launchurl("https://github.com/3underscoreN");
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
