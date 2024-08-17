import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:adaptive_theme/adaptive_theme.dart';

class Resume extends StatelessWidget {
  const Resume({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AdaptiveTheme.of(context).theme.colorScheme.surface,
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Text(
              "In case if you're interested...",
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: AdaptiveTheme.of(context).theme.colorScheme.onSurface,
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Resume",
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                "Education",
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: AdaptiveTheme.of(context).theme.colorScheme.onSurface,
                  ),
                ),
              ),
              Text(
                "Experience",
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: AdaptiveTheme.of(context).theme.colorScheme.onSurface,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2 - 48 * 2 - 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "BEng in Computer Science",
                            softWrap: true,
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: AdaptiveTheme.of(context).theme.colorScheme.onSurface,
                              ),
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            "The Hong Kong University of Science and Technology / 2022 - 2026 (Per.)",
                            softWrap: true,
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                fontSize: 16,
                                color: AdaptiveTheme.of(context).theme.colorScheme.onSurface,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "4 years of intensive learning, in which I aim to learn as much as I can about computer science, while trying to stay healthy mentally.",
                            softWrap: true,
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                fontSize: 12,
                                color: AdaptiveTheme.of(context).theme.colorScheme.onSurface,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "High School",
                            softWrap: true,
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: AdaptiveTheme.of(context).theme.colorScheme.onSurface,
                              ),
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            "TWGHs Li Ka Shing College / 2016 - 2022",
                            softWrap: true,
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                fontSize: 16,
                                color: AdaptiveTheme.of(context).theme.colorScheme.onSurface,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Highschool that enlightens my interest in computer science and programming, then pushes me into the rabbit hole of the computing industry.",
                            softWrap: true,
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                fontSize: 12,
                                color: AdaptiveTheme.of(context).theme.colorScheme.onSurface,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2 - 48 * 2 - 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Full time student helper",
                            softWrap: true,
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: AdaptiveTheme.of(context).theme.colorScheme.onSurface,
                              ),
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            "Undergraduate Recruitment and Admissions Office, HKUST / 2023 - 2024",
                            softWrap: true,
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                fontSize: 16,
                                color: AdaptiveTheme.of(context).theme.colorScheme.onSurface,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Data preperation and presenting. Checking figures to ensure consistency across different reports, generating yearly reports for the year's figures.",
                            softWrap: true,
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                fontSize: 12,
                                color: AdaptiveTheme.of(context).theme.colorScheme.onSurface,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Part time student helper",
                            softWrap: true,
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: AdaptiveTheme.of(context).theme.colorScheme.onSurface,
                              ),
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            "Information Technology Services Center, HKUST / 2023 - 2024",
                            softWrap: true,
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                fontSize: 16,
                                color: AdaptiveTheme.of(context).theme.colorScheme.onSurface,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "IT Operations. Handling user requests on IT demands. Also maintains prints that are located all around the campus, changing toners and fixing jams.",
                            softWrap: true,
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                fontSize: 12,
                                color: AdaptiveTheme.of(context).theme.colorScheme.onSurface,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Map Admin",
                            softWrap: true,
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: AdaptiveTheme.of(context).theme.colorScheme.onSurface,
                              ),
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            "PathAdvisor Team, HKUST / 2022 - 2023",
                            softWrap: true,
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                fontSize: 16,
                                color: AdaptiveTheme.of(context).theme.colorScheme.onSurface,
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Map managment. Maintaining the campus map for mobile and web platform. Collaborate with developers and art designers to correct inconsistent maps.",
                            softWrap: true,
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                fontSize: 12,
                                color: AdaptiveTheme.of(context).theme.colorScheme.onSurface,
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
          )
        ],
      ),
    );
  }
}
