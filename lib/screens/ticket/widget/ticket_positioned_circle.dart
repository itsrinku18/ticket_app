import 'package:flutter/material.dart';

import '../../../base/res/styles/app_styles.dart';

class TicketPositionedCircle extends StatelessWidget {
  final bool? position;

  const TicketPositionedCircle({super.key, this.position});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: position == true ? 22 : null,
        right: position == true ? null : 22,
        top: 255,
        child: Container(
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 2.0, color: AppStyles.textColor),
          ),
          child: CircleAvatar(
            maxRadius: 4,
            backgroundColor: AppStyles.textColor,
          ),
        ));
  }
}
