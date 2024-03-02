import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final onBoardingPageProvider = StateProvider<int>((ref) => 0);
final pageController = Provider<PageController>((ref) => PageController());
