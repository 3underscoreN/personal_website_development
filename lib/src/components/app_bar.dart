import 'package:flutter/material.dart';

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:personal_website/src/controllers/scroll_controllers.dart';

import 'package:day_night_switcher/day_night_switcher.dart';

import 'package:personal_website/src/providers/theme_state_provider.dart';

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
  actions: const [
    LightDarkSwitch(),
    Padding(padding: EdgeInsets.fromLTRB(1.0, 1.0, 48.0, 1.0)),
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
                      AdaptiveTheme.of(context).theme.colorScheme.surface,
              ),
            ),
          ),
          Text(
            '3_n',
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: AdaptiveTheme.of(context).theme.colorScheme.onSurface,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LightDarkSwitch extends ConsumerStatefulWidget {
  const LightDarkSwitch({super.key});

  @override
  ConsumerState<LightDarkSwitch> createState() => _LightDarkSwitchState();
}

class _LightDarkSwitchState extends ConsumerState<LightDarkSwitch> {

  late bool buttonState;
  bool isGotData = false;

  @override
  Widget build(BuildContext context) {
    AsyncValue<bool> asyncState = ref.watch(isDarkProvider);
    if (asyncState is AsyncData) {
      if (!isGotData) {
        
        buttonState = asyncState.value!;
        isGotData = true;
      }
      return DayNightSwitcherIcon(
        isDarkModeEnabled: buttonState,
        onStateChanged: (isDarkModeEnabled) {
          if (isDarkModeEnabled) {
            AdaptiveTheme.of(context).setDark();
            buttonState = true;
          } else {
            AdaptiveTheme.of(context).setLight();
            buttonState = false;
          }
        },
      );
    }
    if (asyncState is AsyncError) {
      return Icon(
        Icons.error_outline,
        color: AdaptiveTheme.of(context).theme.colorScheme.error,
      );
    }
    return const CircularProgressIndicator();
  }
}
