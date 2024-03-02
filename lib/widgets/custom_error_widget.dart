import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:task_app/config/theme/app_color.dart';
import 'package:task_app/services/network/failure.dart';
import 'package:task_app/widgets/custom_button.dart';

class CustomErrorWidgets extends ConsumerWidget {
  final Failure failure;
  final VoidCallback onTap;

  const CustomErrorWidgets(
      {super.key, required this.failure, required this.onTap});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (failure.statusCode == 405) {
      return ErrorMessage(
        onTap: onTap,
        message: failure.message,
      );
    } else if (failure.statusCode == 500) {
      return InternalServerError(onTap: onTap);
    }

    // else if (failure.statusCode == 0) {
    //   return NoInternet(onTap: onTap);
    // }

    else if (failure.statusCode == 0) {
      return ErrorMessage(
        onTap: onTap,
        message: failure.message,
      );
    } else {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              failure.message,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
              padding: const EdgeInsets.all(6).copyWith(top: 1, bottom: 1),
              width: 90,
              onPressed: onTap,
              child: const Text("Retry"),
            )
          ],
        ),
      );
    }
  }
}

class NoInternet extends ConsumerWidget {
  final VoidCallback onTap;
  const NoInternet({super.key, required this.onTap});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "No internet connection!",
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: AppColor.errorColor),
        ),
        const SizedBox(
          height: 30,
        ),
        CustomButton(
          padding: const EdgeInsets.all(6).copyWith(top: 1, bottom: 1),
          width: 90,
          onPressed: onTap,
          child: const Text("Retry"),
        )
      ],
    );
  }
}

class InternalServerError extends ConsumerWidget {
  final VoidCallback onTap;

  const InternalServerError({super.key, required this.onTap});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Internal Server error ",
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: AppColor.errorColor),
        ),
        const SizedBox(
          height: 30,
        ),
        CustomButton(
          padding: const EdgeInsets.all(6).copyWith(top: 1, bottom: 1),
          width: 90,
          onPressed: onTap,
          child: const Text("Retry"),
        )
      ],
    );
  }
}

class ErrorMessage extends ConsumerWidget {
  final VoidCallback onTap;
  final String message;

  const ErrorMessage({super.key, required this.onTap, required this.message});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          message.toString(),
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: AppColor.errorColor),
        ),
        const SizedBox(
          height: 30,
        ),
        CustomButton(
          padding: const EdgeInsets.all(6).copyWith(top: 1, bottom: 1),
          width: 90,
          onPressed: onTap,
          child: const Text("Retry"),
        )
      ],
    );
  }
}
