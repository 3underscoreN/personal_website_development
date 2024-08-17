import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:adaptive_theme/adaptive_theme.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Container(
        color: AdaptiveTheme.of(context).theme.colorScheme.primary,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding:
                  const EdgeInsets.fromLTRB(64.0, 128.0 + 65.0, 16.0, 128.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Hi, I'm Kelvin.",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        fontSize: 64,
                        fontWeight: FontWeight.bold,
                        color: AdaptiveTheme.of(context)
                            .theme
                            .colorScheme
                            .onPrimary,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "I'm a ",
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            fontSize: 64,
                            fontWeight: FontWeight.bold,
                            color: AdaptiveTheme.of(context)
                                .theme
                                .colorScheme
                                .onPrimary,
                          ),
                        ),
                      ),
                      DefaultTextStyle(
                        style: GoogleFonts.dmSerifText(
                          textStyle: TextStyle(
                            fontSize: 64,
                            fontWeight: FontWeight.bold,
                            color: AdaptiveTheme.of(context)
                                .theme
                                .colorScheme
                                .secondary,
                          ),
                        ),
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
                    ],
                  ),
                ],
              ),
            ),
            MediaQuery.of(context).size.width >= 1127
                ? Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.fromLTRB(10.0, 0.0, 64.0, 0.0),
                    child: const PersonalImage(),
                  )
                : Container(),
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
      alignment: Alignment.bottomCenter,
      child: Image.asset(
        'assets/images/3_n.png',
        width: 400,
        height: 400,
      ),
    );
  }
}
