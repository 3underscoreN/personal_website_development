import 'package:flutter/material.dart';

import 'package:personal_website/src/text/resume_str.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:adaptive_theme/adaptive_theme.dart';

import 'dart:math';

class Resume extends StatelessWidget {
  const Resume({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> educationResumeEntry = resumeStr["education"]!
        .map((entry) => ResumeEntry(
              title: entry["title"]!,
              subtitle: entry["subtitle"]!,
              description: entry["description"]!,
            ))
        .toList();

    final List<Widget> experienceResumeEntry = resumeStr["experience"]!.map(
      (entry) {
        return ResumeEntry(
          title: entry["title"]!,
          subtitle: entry["subtitle"]!,
          description: entry["description"]!,
        );
      },
    ).toList();

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
          MediaQuery.of(context).size.width > 700
              ? TwoColumnResume(
                  educationEntries: educationResumeEntry,
                  experienceEntries: experienceResumeEntry,
                )
              : OneColumnResume(
                  educationEntries: educationResumeEntry,
                  experienceEntries: experienceResumeEntry,
                ),
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
              fontSize: 24,
              color: AdaptiveTheme.of(context).theme.colorScheme.onSurface,
            ),
          ),
        ),
        Text(
          subtitle,
          softWrap: true,
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
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
  const TwoColumnResume(
      {super.key,
      required this.educationEntries,
      required this.experienceEntries});

  final List<Widget> educationEntries;
  final List<Widget> experienceEntries;

  List<TableRow> verticalTableBuilder(
      List<Widget> eduEntry, List<Widget> expEntry, BuildContext context) {
    List<TableRow> result = [];
    int counter = 0;
    for (; counter < min(eduEntry.length, expEntry.length); counter++) {
      result.add(
        TableRow(
          children: [
            eduEntry[counter],
            const SizedBox(width: 8),
            expEntry[counter],
          ],
        ),
      );
      result.add(
        const TableRow(
          children: [
            Divider(),
            SizedBox(width: 8),
            Divider(),
          ],
        ),
      );
    }

    while (counter < eduEntry.length) {
      result.add(
        TableRow(
          children: [
            eduEntry[counter],
            const SizedBox(width: 8),
            const SizedBox(width: 1, height: 1),
          ],
        ),
      );
      result.add(
        const TableRow(
          children: [
            Divider(),
            SizedBox(width: 8),
            SizedBox(width: 1, height: 1),
          ],
        ),
      );
      counter++;
    }

    while (counter < expEntry.length) {
      result.add(
        TableRow(
          children: [
            const SizedBox(width: 1, height: 1),
            const SizedBox(width: 8),
            expEntry[counter],
          ],
        ),
      );
      result.add(
        const TableRow(
          children: [
            SizedBox(width: 1, height: 1),
            SizedBox(width: 8),
            Divider(),
          ],
        ),
      );
      counter++;
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
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
        Table(
          columnWidths: const {
            0: FlexColumnWidth(),
            1: FixedColumnWidth(8),
            2: FlexColumnWidth(),
          },
          defaultVerticalAlignment: TableCellVerticalAlignment.top,
          children: verticalTableBuilder(
              educationEntries, experienceEntries, context),
        ),
      ],
    );
  }
}

class OneColumnResume extends StatelessWidget {
  const OneColumnResume(
      {super.key,
      required this.educationEntries,
      required this.experienceEntries});

  final List<Widget> educationEntries;
  final List<Widget> experienceEntries;

  @override
  Widget build(BuildContext context) {
    final List<Widget> eduR = [];
    final List<Widget> expR = [];
    for (Widget w in educationEntries) {
      eduR.add(w);
      eduR.add(const Divider());
    }
    for (Widget w in experienceEntries) {
      expR.add(w);
      expR.add(const Divider());
    }

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
        ...eduR,
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
        ...expR,
      ],
    );
  }
}
