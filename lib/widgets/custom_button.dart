import 'package:flutter/material.dart';
import 'package:task_app/config/theme/app_color.dart';

const EdgeInsets _defaultPadding = EdgeInsets.symmetric(
  vertical: 10,
  horizontal: 30,
);

final BorderRadius _defaultBorderRadius = BorderRadius.circular(200);

class CustomButton extends StatelessWidget {
  CustomButton({
    Key? key,
    required this.child,
    required this.onPressed,
    this.height = 48,
    this.width,
    EdgeInsetsGeometry? padding,
    this.borderSide = BorderSide.none,
    this.backgroundColor = AppColor.onSecondaryColor,
    BorderRadius? borderRadius,
    this.primary = AppColor.whiteColor,
    Color? loadingColor,
    this.fontSize = 20,
    this.isLoading = false,
    this.isProgress = false,
    this.isTextOnly = false,
    this.isDisabled = false,
  })  : padding = padding ?? _defaultPadding,
        loadingColor = loadingColor ?? backgroundColor,
        borderRadius = borderRadius ?? _defaultBorderRadius,
        super(key: key);

  CustomButton.filled({
    Key? key,
    required this.child,
    required this.onPressed,
    this.height = 48,
    this.width,
    EdgeInsetsGeometry? padding,
    this.borderSide = BorderSide.none,
    this.backgroundColor = AppColor.onSecondaryColor,
    BorderRadius? borderRadius,
    this.primary = AppColor.whiteColor,
    this.isLoading = false,
    Color? loadingColor,
    this.fontSize = 20,
    this.isProgress = false,
    this.isTextOnly = false,
    this.isDisabled = false,
  })  : padding = padding ?? _defaultPadding,
        loadingColor = loadingColor ?? backgroundColor,
        borderRadius = borderRadius ?? _defaultBorderRadius,
        super(key: key);

  CustomButton.outlined({
    Key? key,
    required this.child,
    required this.onPressed,
    this.height = 48,
    this.width,
    EdgeInsetsGeometry? padding,
    BorderSide? borderSide,
    required this.backgroundColor,
    this.primary = AppColor.primaryColor,
    BorderRadius? borderRadius,
    this.isLoading = false,
    Color? loadingColor,
    this.fontSize = 20,
    this.isProgress = false,
    this.isTextOnly = false,
    this.isDisabled = false,
  })  : padding = padding ?? _defaultPadding,
        loadingColor = loadingColor ?? backgroundColor,
        borderSide = BorderSide(
            color: isLoading ? loadingColor! : AppColor.primaryColor, width: 2),
        borderRadius = borderRadius ?? _defaultBorderRadius,
        super(key: key);

  final Widget child;
  final void Function()? onPressed;
  final EdgeInsetsGeometry padding;
  final Color backgroundColor;
  final Color? primary;
  final double? height;
  final double? width;
  final bool isLoading;
  final Color loadingColor;

  final BorderSide borderSide;
  final BorderRadius borderRadius;
  final double fontSize;
  final bool isProgress;
  final bool isTextOnly;
  final bool isDisabled;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextButton(
          onPressed: isLoading || isDisabled ? null : onPressed,
          style: TextButton.styleFrom(
            foregroundColor: primary,
            textStyle: Theme.of(context).textTheme.headlineSmall,
            backgroundColor: isDisabled
                ? Colors.grey.shade400
                : isLoading
                    ? loadingColor
                    : backgroundColor,
            padding: padding,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius,
              side: borderSide,
            ),
          ),
          child: Center(
              child: isLoading
                  ? !isTextOnly
                      ? SizedBox(
                          height: height! - 10.0,
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child:
                                CircularProgressIndicator(color: Colors.white),
                          ),
                        )
                      : Text("Processing...",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: AppColor.primaryColor))
                  : child)),
    );
  }
}
