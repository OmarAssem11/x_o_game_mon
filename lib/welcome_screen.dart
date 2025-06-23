import 'package:flutter/material.dart';
import 'package:x_o_game/symbol_selection_item.dart';

class WelcomeScreen extends StatelessWidget {
  static const String routeName = '/welcome';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF00D2FF), Color(0xFF3A7BD5)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Image.asset(
                'assets/images/tic_tac_toe.png',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Spacer(),
              Text(
                'Pick who goes first?',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    SymbolSelectionItem(symbol: 'x'),
                    SizedBox(width: 16),
                    SymbolSelectionItem(symbol: 'o'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
