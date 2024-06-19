import 'package:flutter/material.dart';

class ExchangeRateWidget extends StatelessWidget {
  final List<Map<String, dynamic>> rates = [
    {'currency': 'USD', 'buy': 4120.00, 'sell': 4131.00, 'flag': '🇺🇸'},
    {'currency': 'THB', 'buy': 111.10, 'sell': 113.90, 'flag': '🇹🇭'},
    {'currency': 'EUR', 'buy': 4284.56, 'sell': 4548.09, 'flag': '🇪🇺'},
    {'currency': 'AUD', 'buy': 2596.18, 'sell': 2853.56, 'flag': '🇦🇺'},
    {'currency': 'VND', 'buy': 0.1587, 'sell': 0.1643, 'flag': '🇻🇳'},
    {'currency': 'CAD', 'buy': 2501.90, 'sell': 3089.50, 'flag': '🇨🇦'},
    {'currency': 'JPY', 'buy': 25.3151, 'sell': 26.5553, 'flag': '🇯🇵'},
    {'currency': 'LAK', 'buy': 0.1555, 'sell': 0.2023, 'flag': '🇱🇦'},
    {'currency': 'CNY', 'buy': 555.60, 'sell': 574.22, 'flag': '🇨🇳'},
    {'currency': 'GBP', 'buy': 5093.96, 'sell': 5360.44, 'flag': '🇬🇧'},
    {'currency': 'USD/VND', 'buy': 25500.00, 'sell': 25950.00, 'flag': '🇺🇸'},
    {'currency': 'USD/JPY', 'buy': 155.60, 'sell': 162.63, 'flag': '🇺🇸'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    );
  }
}
