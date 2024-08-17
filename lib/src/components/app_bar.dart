import 'package:flutter/material.dart';

import 'package:adaptive_theme/adaptive_theme.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:personal_website/src/controllers/scroll_controllers.dart';

final AppBar websiteAppBar = AppBar(
  backgroundColor: const Color.fromARGB(0, 0, 0, 0),
  surfaceTintColor: const Color.fromRGBO(0, 0, 0, 0.3),
  centerTitle: false,
  toolbarHeight: 65,
  elevation: 6.0,
  title: const Row(
    children: [
      Padding(
        padding: EdgeInsets.fromLTRB(24.0, 1.0, 1.0, 1.0),
      ),
      LogoButton(),
    ],
  ),
  actions: [
    
    const Padding(padding: EdgeInsets.fromLTRB(1.0, 1.0, 48.0, 1.0)),
  ],
);

class LogoButton extends StatelessWidget {
  const LogoButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        itemController.scrollTo(
          index: 0,
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut,
        );
      },
      child: Stack(
        children: <Widget>[
          Text(
            '3_n',
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 2
                  ..color =
                      AdaptiveTheme.of(context).theme.colorScheme.onSurface,
              ),
            ),
          ),
          Text(
            '3_n',
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: AdaptiveTheme.of(context).theme.colorScheme.surface,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class LightDarkSwitch extends StatefulWidget {
//   const LightDarkSwitch({super.key});

//   @override
//   State<LightDarkSwitch> createState() => _LightDarkSwitchState();
// }

// class _LightDarkSwitchState extends State<LightDarkSwitch> {
//   @override
//   Widget build(BuildContext context) {
    
//   }
// }

