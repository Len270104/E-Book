import 'package:flutter/material.dart';
import 'package:my_app/BoxScrolls/csx.dart';
import 'package:my_app/BoxScrolls/exchange.dart';
import 'package:my_app/BoxScrolls/favorites.dart';
import 'package:my_app/BoxScrolls/promotions.dart';
import 'package:my_app/BoxScrolls/service.dart';

class HomeScreenData2 {
  static final List<Box> listItems = [
    Box(
      icon: Icons.favorite,
      name: "FAVORITES",
      text: "Save recipient information for quick translation.",
      route: const Favorites(),
    ),
    Box(
      icon: Icons.discount,
      name: "PROMOTIONS",
      text: "More discounts and special offer from ACLEDA'S partners.",
      route: const Promotions(),
    ),
    Box(
      icon: Icons.qr_code,
      name: "SERVICES",
      text: "Other services with partner.",
      route: Services(),
    ),
    Box(
      icon: Icons.currency_exchange_outlined,
      name: "EXCHANGE",
      text: "Globel Exchange.",
      route: ExchangeRateWidget(),
    ),
    Box(
      icon: Icons.balance_rounded,
      name: "CSX Trade",
      text: "CXS Cambodia Securities Exchanges",
      route: CSX_Trade(),
    ),
  ];
}

class Box {
  final String name;
  final String text;
  final IconData icon;
  final Widget route;

  Box({
    required this.name,
    required this.text,
    required this.icon,
    required this.route,
  });
}
