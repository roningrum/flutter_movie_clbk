import 'package:flutter/material.dart';
import 'package:flutter_movie_clbk/theme/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TransactionHistoryCard extends StatelessWidget {
  final String name;
  final String icon;
  final int amount;
  final String state;

  const TransactionHistoryCard({super.key, required this.name, required this.icon, required this.amount, required this.state});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IntrinsicWidth(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const SizedBox( height: 8.0),
                      SvgPicture.asset(icon, width: 40, height: 40),
                      const SizedBox(width: 12),
                      Text(name, style: contentTextBlack)
                    ],
                  ),
                  Row(
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: state == "income"
                                  ? "+\$"
                                  : state == "debit"
                                  ? "-\$"
                                  : "\$",
                              style: contentTextBlack.copyWith( color: state == "income"? Colors.green : state == "debit"? Colors.red : Colors.orangeAccent)
                            ),
                            TextSpan(
                              text: amount.toString(),
                              style: contentTextBlack.copyWith( color: state == "income"? Colors.green : state == "debit"? Colors.red : Colors.orangeAccent)
                            ),
                          ],
                        ),
                      ), // Add your desired text style here
                      const SizedBox(width: 8),
                      SvgPicture.asset("asset/images/arrow-forward.svg", width: 16, height: 16, color: Colors.black,)
                    ],
                  )
                ],
              ),
              SizedBox(
              width: MediaQuery.of(context).size.width-64,
                child: const Divider(
                  color: Colors.grey,
                  thickness: 0.25,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
