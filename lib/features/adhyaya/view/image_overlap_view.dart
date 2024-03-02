import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_app/config/theme/constant/image_path.dart';

class ImageOverlapView extends ConsumerWidget {
  const ImageOverlapView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        Positioned(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: Image.asset(
                  ImagePath.adhaya,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
        Positioned(
          bottom: -0,
          right: 40,
          left: 40,
          child: Container(
            child: Image.asset(
              ImagePath.adhaya2,
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }
}
