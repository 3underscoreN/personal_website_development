import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:adaptive_theme/adaptive_theme.dart';

import 'package:personal_website/src/theme/light_theme.dart';
import 'package:personal_website/src/theme/dark_theme.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Container(
        decoration: AdaptiveTheme.of(context).theme.brightness == Brightness.light
            ? lightThemeBackground
            : darkThemeBackground,
        child: Stack(
          children: [
            const PersonalImage(),
            Container(
              margin: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width > 600 ? 64.0 : 16.0, 128.0, 16.0, 128.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      "Hi, I'm Kelvin.",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          fontSize: MediaQuery.of(context).size.width > 600 ? 64 : 64 * MediaQuery.of(context).size.width / 600,
                          fontWeight: FontWeight.bold,
                          color: AdaptiveTheme.of(context)
                              .theme
                              .colorScheme
                              .onPrimary,
                        ),
                      ),
                      softWrap: true,
                    ),
                  ),
                  Wrap(
                    direction: Axis.horizontal,
                    children: [
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          "I'm a ",
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              fontSize: MediaQuery.of(context).size.width > 600 ? 64 : 64 * MediaQuery.of(context).size.width / 600,
                              fontWeight: FontWeight.bold,
                              color: AdaptiveTheme.of(context)
                                  .theme
                                  .colorScheme
                                  .onPrimary,
                            ),
                          ),
                        ),
                      ),
                      DefaultTextStyle(
                        style: GoogleFonts.dmSerifText(
                          textStyle: TextStyle(
                            fontSize: MediaQuery.of(context).size.width > 600 ? 64 : 64 * MediaQuery.of(context).size.width / 600,
                            fontWeight: FontWeight.bold,
                            color: AdaptiveTheme.of(context)
                                .theme
                                .colorScheme
                                .secondary,
                          ),
                        ),
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: SizedBox(
                            width: 450,
                            child: AnimatedTextKit(
                              animatedTexts: [
                                TypewriterAnimatedText("student.",
                                    speed: const Duration(milliseconds: 200),
                                    cursor: "|"),
                                TypewriterAnimatedText("programmer.",
                                    speed: const Duration(milliseconds: 200),
                                    cursor: "|"),
                                TypewriterAnimatedText("gamer.",
                                    speed: const Duration(milliseconds: 200),
                                    cursor: "|"),
                                TypewriterAnimatedText("companion.",
                                    speed: const Duration(milliseconds: 200),
                                    cursor: "|"),
                              ],
                              repeatForever: true,
                              pause: const Duration(milliseconds: 3000),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PersonalImage extends StatelessWidget {
  const PersonalImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      margin: const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 20.0),
      child: Image.asset(
        'assets/images/3_n.png',
        width: 400,
        height: 400,
      ),
    );
  }
}