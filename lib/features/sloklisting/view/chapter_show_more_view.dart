import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:task_app/config/theme/app_color.dart';

class ChapterShowMoreView extends ConsumerStatefulWidget {
  final String text;
  const ChapterShowMoreView({super.key, required this.text});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ChapterShowMoreViewState();
}

class _ChapterShowMoreViewState extends ConsumerState<ChapterShowMoreView> {
  bool _isExpanded = false;

  void _toggleExpanded() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          widget.text,
          // Show only the first two lines initially
          maxLines: _isExpanded ? 100 : 2,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(),
        ),
        SizedBox(height: 8),
        InkWell(
          onTap: _toggleExpanded,
          child: Text(
            _isExpanded ? 'Show less' : 'Show more',
            style: TextStyle(color: AppColor.greyTextColor),
          ),
        ),
      ],
    );
  }
}
