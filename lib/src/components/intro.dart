import 'package:aurora_background/star_field.dart';
import 'package:flutter/material.dart';
import 'package:typewrite_text/typewrite_text.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:adaptive_theme/adaptive_theme.dart';

import 'package:personal_website/src/theme/light_theme.dart';
import 'package:personal_website/src/theme/dark_theme.dart';

import 'package:aurora_background/aurora_background.dart';

import 'package:personal_website/src/text/intro_str.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: AuroraBackground(
        backgroundColors: AdaptiveTheme.of(context).theme.brightness == Brightness.light
            ? lightThemeAuroraColors
            : darkThemeAuroraColors,
        waveDurations: const <int>[8, 16, 24],
        waveHeightMultiplier: 0.15,
        baseHeightMultiplier: 0.5,
        starFieldConfig: StarFieldConfig(
          starCount: 100,
          maxStarSize: 1.8,
          starColor: Colors.white.withAlpha((255 * 0.8).round()),
          seed: 114514,
        ),
        child: Container(
          // decoration:
          //     AdaptiveTheme.of(context).theme.brightness == Brightness.light
          //         ? lightThemeBackground
          //         : darkThemeBackground,
          child: Stack(
            children: [
              const PersonalImage(),
              Container(
                margin: EdgeInsets.fromLTRB(
                    MediaQuery.of(context).size.width > 600 ? 64.0 : 16.0,
                    128.0,
                    16.0,
                    128.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        "Hi, I'm Kelvin.",
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            fontSize: MediaQuery.of(context).size.width > 600
                                ? 64
                                : 64 * MediaQuery.of(context).size.width / 600,
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
                                fontSize: MediaQuery.of(context).size.width > 600
                                    ? 64
                                    : 64 *
                                        MediaQuery.of(context).size.width /
                                        600,
                                fontWeight: FontWeight.bold,
                                color: AdaptiveTheme.of(context)
                                    .theme
                                    .colorScheme
                                    .onPrimary,
                              ),
                            ),
                          ),
                        ),
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: SizedBox(
                            width: 450,
                            child: TypewriteText(
                              linesOfText: identities.map((String e) => "$e.").toList(),
                              cursorSymbol: '|',
                              forwardAnimationDuration: const Duration(milliseconds: 200),
                              reverseAnimationDuration: const Duration(milliseconds: 80),
                              beforeAnimationDuration: const Duration(milliseconds: 1500),
                              afterAnimationDuration: const Duration(milliseconds: 2000),
                              cursorBlinkingDuration: const Duration(milliseconds: 400),
                              textStyle: GoogleFonts.dmSerifText(
                                textStyle: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width > 600
                                          ? 64
                                          : 64 *
                                              MediaQuery.of(context).size.width /
                                              600,
                                  fontWeight: FontWeight.bold,
                                  color: AdaptiveTheme.of(context)
                                      .theme
                                      .colorScheme
                                      .secondary,
                                ),
                              ),
                              
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                margin: const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 20.0),
                child: const AnimatedArrow(),
              ),
            ],
          ),
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

class AnimatedArrow extends StatelessWidget {
  const AnimatedArrow({super.key});

  @override
  Widget build(BuildContext context) {
    return Animate(
      onPlay: (controller) => controller.repeat(reverse: true),
      effects: [
        FadeEffect(
            begin: .2,
            end: .9,
            curve: Curves.easeInOutCubicEmphasized,
            duration: 1000.ms),
        MoveEffect(
          begin: const Offset(0, 0),
          end: const Offset(0, 10),
          duration: 1000.ms,
          curve: Curves.easeInOut,
        )
      ],
      child: Icon(
        Icons.keyboard_arrow_down,
        size: 48,
        color: Theme.of(context).colorScheme.secondary,
      ),
    );
  }
}
