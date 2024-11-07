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
          MediaQuery.of(context).size.width > 600
              ? const TwoColumnResume()
              : const OneColumnResume(),
        ],
      ),
    );
  }
}

class ResumeEntry extends StatelessWidget {
  const ResumeEntry(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.description});

  final String title;
  final String subtitle;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          softWrap: true,
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: AdaptiveTheme.of(context).theme.colorScheme.onSurface,
            ),
          ),
        ),
        Text(
          subtitle,
          softWrap: true,
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
              fontSize: 16,
              color: AdaptiveTheme.of(context).theme.colorScheme.onSurface,
            ),
          ),
        ),
        const SizedBox(height: 1),
        Text(
          description,
          softWrap: true,
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
              fontSize: 12,
              color: AdaptiveTheme.of(context).theme.colorScheme.onSurface,
            ),
          ),
        ),
      ],
    );
  }
}

class TwoColumnResume extends StatelessWidget {
  const TwoColumnResume({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
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
                width: MediaQuery.of(context).size.width / 2 - 48 * 2 - 5 > 0
                    ? MediaQuery.of(context).size.width / 2 - 48 * 2 - 5
                    : 0,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ResumeEntry(
                      title: "BEng in Computer Science",
                      subtitle:
                          "The Hong Kong University of Science and Technology / 2022 - 2026 (Pre.)",
                      description:
                          "4 years of intensive learning, in which I aim to learn as much as I can about computer science, while trying to stay healthy mentally.",
                    ),
                    Divider(),
                    ResumeEntry(
                        title: "Exchange Student",
                        subtitle: "National Taiwan University / 2024 Fall",
                        description: "Staying in Taiwan for a semester taking courses in electrical engineering to broaden my horizons on EE, and auditing transportation engineering as a side hobby."),
                    Divider(),
                    ResumeEntry(
                      title: "High School",
                      subtitle: "TWGHs Li Ka Shing College / 2016 - 2022",
                      description:
                          "Highschool that enlightens my interest in computer science and programming, then pushes me into the rabbit hole of the computing industry.",
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2 - 48 * 2 - 5 > 0
                    ? MediaQuery.of(context).size.width / 2 - 48 * 2 - 5
                    : 0,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ResumeEntry(
                      title: "Full time student helper",
                      subtitle:
                          "Undergraduate Recruitment and Admissions Office, HKUST / 2023 - 2024",
                      description:
                          "Data preperation and presenting. Checking figures to ensure consistency across different reports, generating yearly reports for the year's figures.",
                    ),
                    Divider(),
                    ResumeEntry(
                      title: "Part time student helper",
                      subtitle:
                          "Information Technology Services Center, HKUST / 2023 - 2024",
                      description:
                          "IT Operations. Handling user requests on IT demands. Also maintains prints that are located all around the campus, changing toners and fixing jams.",
                    ),
                    Divider(),
                    ResumeEntry(
                      title: "Map Admin",
                      subtitle: "PathAdvisor Team, HKUST / 2022 - 2023",
                      description:
                          "Map managment. Maintaining the campus map for mobile and web platform. Collaborate with developers and art designers to correct inconsistent maps.",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class OneColumnResume extends StatelessWidget {
  const OneColumnResume({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: 16),
        Container(
          alignment: Alignment.center,
          child: Text(
            "Education",
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: AdaptiveTheme.of(context).theme.colorScheme.onSurface,
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        const ResumeEntry(
          title: "BEng in Computer Science",
          subtitle:
              "The Hong Kong University of Science and Technology / 2022 - 2026 (Per.)",
          description:
              "4 years of intensive learning, in which I aim to learn as much as I can about computer science, while trying to stay healthy mentally.",
        ),
        const Divider(),
        const ResumeEntry(
                        title: "Exchange Student",
                        subtitle: "National Taiwan University / 2024 Fall",
                        description: "Staying in Taiwan for a semester taking courses in electrical engineering to broaden my horizons on EE, and auditing transportation engineering as a side hobby."),
        const Divider(),
        const ResumeEntry(
          title: "High School",
          subtitle: "TWGHs Li Ka Shing College / 2016 - 2022",
          description:
              "Highschool that enlightens my interest in computer science and programming, then pushes me into the rabbit hole of the computing industry.",
        ),
        const SizedBox(height: 16),
        Container(
          alignment: Alignment.center,
          child: Text(
            "Experience",
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: AdaptiveTheme.of(context).theme.colorScheme.onSurface,
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        const ResumeEntry(
          title: "Full time student helper",
          subtitle:
              "Undergraduate Recruitment and Admissions Office, HKUST / 2023 - 2024",
          description:
              "Data preperation and presenting. Checking figures to ensure consistency across different reports, generating yearly reports for the year's figures.",
        ),
        const Divider(),
        const ResumeEntry(
          title: "Part time student helper",
          subtitle:
              "Information Technology Services Center, HKUST / 2023 - 2024",
          description:
              "IT Operations. Handling user requests on IT demands. Also maintains prints that are located all around the campus, changing toners and fixing jams.",
        ),
        const Divider(),
        const ResumeEntry(
          title: "Map Admin",
          subtitle: "PathAdvisor Team, HKUST / 2022 - 2023",
          description:
              "Map managment. Maintaining the campus map for mobile and web platform. Collaborate with developers and art designers to correct inconsistent maps.",
        ),
      ],
    );
  }
}
