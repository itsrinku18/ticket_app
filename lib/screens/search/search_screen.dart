import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/app_routes.dart';
import 'package:ticket_app/base/widgets/app_double_text.dart';
import 'package:ticket_app/screens/search/widget/app_text_icon.dart';
import 'package:ticket_app/screens/search/widget/app_ticket_tabs.dart';
import 'package:ticket_app/screens/search/widget/find_ticket.dart';
import 'package:ticket_app/screens/search/widget/ticket_promotion.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        children: [
          const SizedBox(
            height: 40,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'What are\n you looking for?',
                style: AppStyles.headlineStyle1.copyWith(fontSize: 35),
              ),
              const SizedBox(
                height: 20,
              ),
              const AppTicketTabs(
                firstTab: "Airline Tickets",
                secondTab: "Hotels",
              ),
              const SizedBox(
                height: 25,
              ),
              const AppTextIcon(
                icon: Icons.flight_takeoff_rounded,
                text: "Departure",
              ),
              const SizedBox(
                height: 20,
              ),
              const AppTextIcon(
                icon: Icons.flight_land_rounded,
                text: "Arrival",
              ),
              const SizedBox(
                height: 25,
              ),
              const FindTicket(),
              const SizedBox(
                height: 25,
              ),
              AppDoubleText(
                  bigText: "Upcoming Flights",
                  smallText: "View all",
                  func: () =>
                      Navigator.pushNamed(context, AppRoutes.allTickets)),
              const SizedBox(
                height: 15,
              ),
              const TicketPromotion(),
            ],
          )
        ],
      ),
    );
  }
}
