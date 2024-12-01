import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class AppTicketTabs extends StatelessWidget {
  const AppTicketTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color:  AppStyles.ticketTabColor,
      ),
      child: const Row(
        children: [
          AppTabs(
            tabText: "Airline Tickets",
          ),
          AppTabs(
            tabText: "Hotels",
            tabBorder: true,
            tabColor: true,
          ),
        ],
      ),
    );
  }
}

class AppTabs extends StatelessWidget {
  final String tabText;
  final bool tabBorder;
  final bool tabColor;

  const AppTabs(
      {super.key,
      this.tabText = "",
      this.tabBorder = false,
      this.tabColor = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7.0),
      width: size.width * .44,
      decoration: BoxDecoration(
        borderRadius: tabBorder == false
            ? const BorderRadius.horizontal(left: Radius.circular(50))
            : const BorderRadius.horizontal(right: Radius.circular(50)),
        color: tabColor == false ? Colors.white : Colors.transparent,
      ),
      child: Center(child: Text(tabText)),
    );
  }
}
