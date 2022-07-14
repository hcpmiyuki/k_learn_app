import 'package:flutter/material.dart';
import 'package:k_learn_app/widgets/pages/bottomNavBar.dart';
import 'package:k_learn_app/widgets/pages/translate.dart';
import 'package:k_learn_app/widgets/pages/word_list.dart';
import 'package:routemaster/routemaster.dart';

final routemaster = RoutemasterDelegate(
  routesBuilder: (context) => routeMap,
);

final routeMap = RouteMap(
  routes: {
    '/': (route) => const MaterialPage(child: BottomNavBar()),
    '/translate': (route) => const MaterialPage(child: TranslatePage()),
    '/wordlist': (route) => const MaterialPage(child: WordListPage())
  },
);

void pushToCharactor() {
  routemaster.push('/walkthrough/character');
}

void pushToPHQ() {
  routemaster.push('/walkthrough/character/phq');
}

void pushToLog() {
  routemaster.push('/walkthrough/character/phq/log');
}

void pushToError() {
  routemaster.push('/walkthrough/character/phq/log/error');
}

void replaceToWalkThrough() {
  routemaster.replace('/walkthrough');
}
