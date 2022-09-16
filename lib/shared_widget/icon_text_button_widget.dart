import 'package:flutter/material.dart';

import '../core/util/colors.dart';
import '../core/util/styles.dart';

class IconTextButton extends StatelessWidget {
  const IconTextButton({
    Key? key,
    required this.icon,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  final IconData icon;
  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Icon(
            icon,
            color: CustomColors.primary,
            size: 30,
          ),
          const SizedBox(height: 5),
          Text(
            text,
            style: Styles.roboto(
              fontSize: 12,
              color: CustomColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}
