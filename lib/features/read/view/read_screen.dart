import 'package:flutter/material.dart';
import 'package:supreme_reader/components/app_bar.dart';
import 'package:supreme_reader/components/colors.dart';

class ReadScreen extends StatelessWidget {
  const ReadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.center,
                colors: [
                  AppColors.bookBackground,
                  AppColors.whiteShade,
                ],
              ),
            ),
          ),
          const CustomAppBar(),
        ],
      ),
    );
  }
}
