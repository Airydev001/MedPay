import 'package:flutter/material.dart';

Widget _buildDots(_currentPageIndex) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      for (int i = 0; i < 2; i++)
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.0),
          child: CircleAvatar(
            radius: 5.0,
            backgroundColor: _currentPageIndex == i ? Colors.blue : Colors.grey,
          ),
        ),
    ],
  );
}
