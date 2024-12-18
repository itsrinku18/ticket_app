import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class FindTicket extends StatelessWidget {
  const FindTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: AppStyles.findTicketBgColor,
      ),
      child: Center(
        child: Text(
          "Find Ticket",
          style: AppStyles.textStyle.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
