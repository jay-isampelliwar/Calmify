import 'package:flutter/material.dart';

class AppSpacer extends StatelessWidget {
  final Size spaceSize;

  const AppSpacer({super.key, required this.spaceSize});

  // Factory constructors for different sizes
  factory AppSpacer.zero() => const AppSpacer(spaceSize: Size(0, 0));
  factory AppSpacer.extraSmall() => const AppSpacer(spaceSize: Size(4, 4));
  factory AppSpacer.small() => const AppSpacer(spaceSize: Size(8, 8));
  factory AppSpacer.regular() => const AppSpacer(spaceSize: Size(12, 12));
  factory AppSpacer.medium() => const AppSpacer(spaceSize: Size(16, 16));
  factory AppSpacer.large() => const AppSpacer(spaceSize: Size(20, 20));
  factory AppSpacer.extraLarge() => const AppSpacer(spaceSize: Size(24, 24));
  factory AppSpacer.huge() => const AppSpacer(spaceSize: Size(32, 32));
  factory AppSpacer.massive() => const AppSpacer(spaceSize: Size(48, 48));

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(size: spaceSize);
  }
}
