import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            vertical: AppLayout.getHeight(20),
            horizontal: AppLayout.getWidth(20)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            "What are \nyou looking for?",
            style: Styles.headLineStyle1.copyWith(fontSize: 35),
          ),
          Gap(AppLayout.getHeight(20)),
          Container(
            child: Row(
              children: [
                Container(
                  width: size.width * 0.44,
                  padding:
                      EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.horizontal(left: Radius.circular(AppLayout.getHeight(50))),
                    color: Color(0xFFF4F6FD),
                  ),
                  child: const Center(child: Text("Airline Ticket"),),
                ),
                Container(
                  width: size.width * 0.44,
                  padding:
                      EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.horizontal(right: Radius.circular(AppLayout.getHeight(50))),
                    color: Colors.grey.shade300,
                  ),
                  child: const Center(child: Text("Hotels"),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
