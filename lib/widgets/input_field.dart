import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:task_app/config/theme/app_color.dart';

class BuilderTextField extends StatelessWidget {
  const BuilderTextField(
      {Key? key,
      required this.name,
      this.autovalidateMode = AutovalidateMode.disabled,
      this.leadingText,
      this.label,
      this.maxLines = 1,
      this.maxLength,
      this.minLength,
      this.keyBoardType,
      this.inputFormatters,
      this.showCharacterCount = true,
      this.isDisabled = false,
      this.onChange,
      this.validator,
      this.isError = false,
      this.onFocusChange,
      this.obscureText = false,
      this.secondLabel,
      this.hintText,
      this.suffixIcon,
      this.prefixIcon,
      this.readOnly = false,
      this.valueTransformer,
      this.onSubmitted,
      Color? fillColor,
      EdgeInsetsGeometry? contentPadding,
      this.focusNode,
      this.isRequired = false,
      this.onSaved,
      this.action = TextInputAction.next,
      this.autofocus = false,
      this.initialValue,
      this.minLines})
      : fillColor = fillColor ?? Colors.white,
        contentPadding = contentPadding ??
            const EdgeInsets.symmetric(
              horizontal: 0,
              vertical: 15,
            ),
        assert(leadingText == null || (maxLines != null && maxLines == 1)),
        super(key: key);

  final AutovalidateMode autovalidateMode;
  final String? leadingText;
  final String name;
  final String? hintText;
  final String? label;
  final String? secondLabel;
  final bool isError;
  final FocusNode? focusNode;
  final int? maxLines;
  final int? maxLength;
  final int? minLength;
  final TextInputType? keyBoardType;
  final bool isDisabled;
  final Color fillColor;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final List<TextInputFormatter>? inputFormatters;
  final bool showCharacterCount;
  final Function(String? value)? onChange;
  final String? Function(String? value)? validator;
  final Function(bool value)? onFocusChange;
  final bool obscureText;
  final bool isRequired;
  final bool readOnly;
  final EdgeInsetsGeometry contentPadding;
  final ValueTransformer<String?>? valueTransformer;
  final Function(String? value)? onSaved;
  final Function(String? value)? onSubmitted;
  final TextInputAction action;
  final dynamic initialValue;
  final bool autofocus;
  final int? minLines;
  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(8);
    return Column(
      children: [
        if (label != null) ...[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(children: [
                    if (isRequired)
                      TextSpan(
                        text: '* ',
                        style:
                            Theme.of(context).textTheme.labelMedium?.copyWith(
                                  color: AppColor.errorColor,
                                ),
                      ),
                    TextSpan(
                      text: tr(label.toString()),
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium
                          ?.copyWith(color: AppColor.secondaryTextColor),
                    ),
                  ]),
                ),
              ),
              if (secondLabel != null)
                Expanded(
                  flex: 2,
                  child: Text(
                    secondLabel ?? '',
                    textAlign: TextAlign.end,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          color: AppColor.greyColor,
                          fontSize: 11,
                        ),
                  ),
                ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
        ],
        FormBuilderTextField(
          minLines: minLines,
          readOnly: readOnly,
          cursorColor: AppColor.secondaryTextColor,
          autovalidateMode: autovalidateMode,
          name: name,
          obscureText: obscureText,
          enabled: !isDisabled,
          focusNode: focusNode,
          autofocus: false,
          initialValue: initialValue,
          validator: validator,
          keyboardType: keyBoardType,
          inputFormatters: inputFormatters,
          textInputAction: action,
          onChanged: (String? value) {
            if (onChange != null) {
              onChange!(value);
            }
          },
          maxLines: maxLines,
          maxLength: maxLength,
          onSaved: onSaved,
          onSubmitted: onSubmitted,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: AppColor.primaryTextColor,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.1),
          valueTransformer: valueTransformer,
          decoration: InputDecoration(
            hintText: hintText != null ? tr(hintText.toString()) : null,
            hintStyle: Theme.of(context).textTheme.labelSmall?.copyWith(
                color: Colors.grey.shade500, fontWeight: FontWeight.w400),
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            errorMaxLines: 4,
            errorStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: AppColor.errorColor, fontWeight: FontWeight.w400),
            prefix: prefixIcon == null
                ? const Padding(padding: EdgeInsets.only(left: 10))
                : null,
            filled: true,
            enabledBorder: Theme.of(context).inputDecorationTheme.enabledBorder,
            disabledBorder:
                Theme.of(context).inputDecorationTheme.disabledBorder,
            focusedBorder: Theme.of(context).inputDecorationTheme.focusedBorder,
            counterStyle: Theme.of(context)
                .textTheme
                .labelSmall
                ?.copyWith(color: AppColor.greyColor),
            errorBorder: Theme.of(context).inputDecorationTheme.enabledBorder,
            focusedErrorBorder:
                Theme.of(context).inputDecorationTheme.focusedErrorBorder,
            fillColor: Theme.of(context).inputDecorationTheme.fillColor,
            contentPadding: contentPadding,
            border: OutlineInputBorder(borderRadius: borderRadius),
          ),
        ),
      ],
    );
  }
}
