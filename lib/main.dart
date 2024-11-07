import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:personal_website/src/theme/light_theme.dart';
import 'package:personal_website/src/theme/dark_theme.dart';

import 'package:personal_website/src/components/app_bar.dart';

import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:personal_website/src/controllers/scroll_controllers.dart';

import 'package:personal_website/src/components/intro.dart';
import 'package:personal_website/src/components/about.dart';
import 'package:personal_website/src/components/resume.dart';
import 'package:personal_website/src/components/footer.dart';

import 'package:animated_snack_bar/animated_snack_bar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  runApp(ProviderScope(child: MyApp(savedThemeMode: savedThemeMode)));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, AdaptiveThemeMode? savedThemeMode});
  // This widget is the root of your application.
  final AdaptiveThemeMode? savedThemeMode = null;
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: lightTheme,
      dark: darkTheme,
      initial: savedThemeMode ?? AdaptiveThemeMode.light,
      builder: (theme, darkTheme) => MaterialApp(
        title: 'Kelvin\'s Personal Website',
        theme: theme,
        darkTheme: darkTheme,
        home: const HomeScrollView(),
      ),
    );
  }
}

class HomeScrollView extends StatefulWidget {
  const HomeScrollView({super.key});

  @override
  State<HomeScrollView> createState() => _HomeScrollViewState();
}

class _HomeScrollViewState extends State<HomeScrollView> {

  static const List<Widget> viewList = [Intro(), About(), Resume(), Footer()];

  @override
  void initState() {
    super.initState();
    if (true) {
      WidgetsBinding.instance.addPostFrameCallback(
        (_) {
          AnimatedSnackBar.material(
            "Welcome to 3_n's personal website!\nThis website is still under heavy development >_<\nSorry for the mess! T_T", 
            duration: const Duration(seconds: 5), 
            animationDuration: const Duration(milliseconds: 300),
            animationCurve: Curves.easeInOut,
            type: AnimatedSnackBarType.info,
            desktopSnackBarPosition: DesktopSnackBarPosition.bottomRight,
          ).show(context);
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 65),
        child: ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            child: websiteAppBar,
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: ScrollablePositionedList.builder(
        itemCount: viewList.length,
        itemScrollController: itemController,
        scrollOffsetController: offsetController,
        itemBuilder: (context, index) {
          return viewList[index];
        },
      ),
    );
  }
}