import 'package:flutter/material.dart';

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
                "I'm currently an undergraduate student studying computer science with an extended major in Artificial Intelligence. I couldn't say I'm good at programming, but I do enjoy the process of creating stuff and apps for people, hence I picked up this \"career\". I'm also interested in games (especially rhythm games!). Recently, I've been learning about depression disorders and how to live with friends who have self-harm behaviors.",
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    fontSize: 18,
                    color:
                        AdaptiveTheme.of(context).theme.colorScheme.onSurface,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
/* 
I'm currently an undergraduate student studying computer science with an extended major in Artificial Intelligence. I couldn't say I'm good at programming, but I do enjoy the process of creating stuff and apps for people, hence I picked up this "career". I'm also interested in games (especially rhythm games!). Recently, I've been learning about depression disorders and how to live with friends who have self-harm behaviors.
*/