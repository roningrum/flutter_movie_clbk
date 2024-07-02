import 'package:flutter/material.dart';
import 'package:flutter_movie_clbk/component/bottom_navigation_bar.dart';
import 'package:flutter_movie_clbk/component/icon_text.dart';
import 'package:flutter_movie_clbk/component/transaction_history_card.dart';
import 'package:flutter_movie_clbk/theme/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        bottomNavigationBar: const BottomNavbar(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 340.0,
                    padding: const EdgeInsets.all(16.0),
                    margin: const EdgeInsets.only(
                        bottom: 40.0), // Adjust margin to avoid overlap
                    color: primaryColor,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset("asset/images/reward.svg",
                                width: 24, height: 24),
                            const SizedBox(width: 12),
                            Container(
                              width: 276,
                              height: 43,
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                color: lilacColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 8),
                                child: Row(
                                  children: [
                                    SvgPicture.asset("asset/images/search.svg",
                                        width: 24, height: 24),
                                    const SizedBox(width: 12),
                                    Text(
                                      "Search \"Your Payments\"",
                                      style: fieldTextStyle.copyWith(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            SvgPicture.asset("asset/images/notification.svg",
                                width: 24, height: 24),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 24),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 12),
                                    width: 24,
                                    height: 24,
                                    child: const CircleAvatar(
                                      radius: 28,
                                      backgroundImage:
                                          AssetImage("asset/images/us.png"),
                                    ),
                                  ),
                                  const Text("US Dollar",
                                      style: contentTextWhite),
                                  SvgPicture.asset("asset/images/down.svg",
                                      width: 24, height: 24),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Text(
                                "\$ 20,000",
                                style: contentTextWhite.copyWith(
                                    fontWeight: FontWeight.w500, fontSize: 36),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                "Available Balance",
                                style: contentTextWhite.copyWith(
                                    color: textGreyColor),
                              ),
                              const SizedBox(height: 12),
                              OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  side: const BorderSide(color: Colors.white),
                                  fixedSize: const Size(155, 48),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset("asset/images/wallet.svg",
                                        width: 24, height: 24),
                                    const SizedBox(width: 10),
                                    Text(
                                      "Add Money",
                                      style: contentTextWhite.copyWith(
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 280, // Adjust this value based on your layout needs
                    left: 24, // Adjust this value based on your layout needs
                    right: 24, // Adjust this value based on your layout needs
                    child: Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width - 48,
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconText(
                                name: "Send",
                                assetImage: "asset/images/send.svg"),
                            IconText(
                                name: "Request",
                                assetImage: "asset/images/request.svg"),
                            IconText(
                                name: "Bank",
                                assetImage: "asset/images/bank.svg"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                  margin: const EdgeInsets.only(top: 8, left: 16, right: 16),
                  child: Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Transaction",
                                style: headingTextStyle.copyWith(
                                    fontWeight: FontWeight.w500, fontSize: 16)),
                            SvgPicture.asset("asset/images/forward.svg",
                                width: 32, height: 32, color: textBlackColor)
                          ]),
                      Container(
                        width: MediaQuery.of(context).size.width - 16,
                        margin: const EdgeInsets.symmetric(vertical: 16),
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: const Column(
                          children: [
                            TransactionHistoryCard(
                              name: "Spending",
                              icon: "asset/images/spending.svg",
                              amount: 500,
                              state: "debit",
                            ),
                            TransactionHistoryCard(
                                name: "Income",
                                icon: "asset/images/income.svg",
                                amount: 3000,
                                state: "income"),
                            TransactionHistoryCard(
                                name: "Bills",
                                icon: "asset/images/bills.svg",
                                amount: 800,
                                state: "debit"),
                            TransactionHistoryCard(
                                name: "Savings",
                                icon: "asset/images/savings.svg",
                                amount: 1000,
                                state: "saving"),
                          ],
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
