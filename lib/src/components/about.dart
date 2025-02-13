import 'package:flutter/material.dart';

import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:personal_website/src/text/about_str.dart';

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:google_fonts/google_fonts.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      color: AdaptiveTheme.of(context).theme.colorScheme.surface,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Text(
              "About me",
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  color: AdaptiveTheme.of(context).theme.colorScheme.onSurface,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 0.0),
                  child: RichText(
                    text: TextSpan(
                      text: "Hello, I am ",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: AdaptiveTheme.of(context)
                              .theme
                              .colorScheme
                              .onSurface,
                        ),
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: "Kelvin, CHAN",
                          style: GoogleFonts.dmSerifText(
                            textStyle: TextStyle(
                              fontSize: 32,
                              color: AdaptiveTheme.of(context)
                                  .theme
                                  .colorScheme
                                  .secondary,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: ".",
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              fontSize: 28,
                              color: AdaptiveTheme.of(context)
                                  .theme
                                  .colorScheme
                                  .onSurface,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Container(
                  padding: const EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 0.0),
                  child: RichText(
                    text: TextSpan(
                      text: "I'm also known as ",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: AdaptiveTheme.of(context)
                              .theme
                              .colorScheme
                              .onSurface,
                        ),
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: "3_n",
                          style: GoogleFonts.dmSerifText(
                            textStyle: TextStyle(
                              fontSize: 32,
                              wordSpacing: 1.2,
                              color: AdaptiveTheme.of(context)
                                  .theme
                                  .colorScheme
                                  .secondary,
                            ),
                          ),
                        ),
                        TextSpan(
                          text: " online.",
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: AdaptiveTheme.of(context)
                                  .theme
                                  .colorScheme
                                  .onSurface,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 36),
          Container(
            padding: const EdgeInsets.fromLTRB(24.0, 0, 24.0, 0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 48 * 2 > 0
                  ? MediaQuery.of(context).size.width - 48 * 2
                  : 0,
              child: Text(
                introStrings["intro"]!,
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    fontSize: 18,
                    color:
                        AdaptiveTheme.of(context).theme.colorScheme.onSurface,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 18),
          Container(
            padding: const EdgeInsets.fromLTRB(24.0, 0, 24.0, 0),
            child: SizedBox(
              height: 36,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "I am interested in ",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        fontSize: 18,
                        color:
                            AdaptiveTheme.of(context).theme.colorScheme.onSurface,
                      ),
                    ),
                  ),
                  DefaultTextStyle(
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        fontSize: 18,
                        color:
                            AdaptiveTheme.of(context).theme.colorScheme.onSurface,
                      ),
                    ),
                    child: AnimatedTextKit(
                      pause: const Duration(milliseconds: 500),
                      repeatForever: true,
                      animatedTexts: interests
                          .map((String e) => RotateAnimatedText("$e."))
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
