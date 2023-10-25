import 'package:flutter/material.dart';
import 'package:togo_culture/main.dart';

class FilterBox extends StatelessWidget {
  final IconData filterIcon;
  final String filterText;

  const FilterBox({
    super.key,
    required this.filterIcon,
    required this.filterText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: defaultTheme.primaryColor.withOpacity(0.6)),
      child: Row(
        children: [
          Icon(
            filterIcon,
            color: Colors.white,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            filterText,
            style: const TextStyle(fontSize: 15, color: Colors.white),
          )
        ],
      ),
    );
  }
}
