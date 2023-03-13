import 'package:flutter/material.dart';
import 'package:flutter_application_tester/custom_text.dart';
import 'package:flutter_application_tester/theme.dart';

class ReportPage extends StatefulWidget {
  const ReportPage({super.key});

  @override
  State<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  List<String> Users = [
    "*",
    "*",
    "*",
    "*",
    "*",
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Reports",
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
            width: double.infinity,
            height: 128,
            padding: const EdgeInsets.fromLTRB(0, 16, 0, 19),
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: seaBlue, borderRadius: BorderRadius.circular(8)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  "Balance",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 5),
                CustomText(
                    text: "Rp. 1,980,300",
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
                SizedBox(height: 23),
                Text(
                  "Last update : 10.34, February 28 2023",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 35,
            padding: const EdgeInsets.fromLTRB(16, 8, 0, 8),
            decoration: BoxDecoration(color: Colors.grey[200]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CustomText(
                    text: "Reports",
                    color: Colors.black87,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ],
            ),
          ),
          ListView.separated(
            itemCount: Users.length,
            shrinkWrap: true,
            padding: const EdgeInsets.all(20),
            physics: const BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int position) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    width: 38,
                    height: 38,
                    decoration: BoxDecoration(
                        color: position.isOdd
                            ? Colors.red[200]
                            : Colors.greenAccent[200],
                        borderRadius: BorderRadius.circular(8)),
                    alignment: Alignment.center,
                    child: CustomText(
                        text: (position.isOdd ? "F" : "S").toString(),
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(height: 10),
                        CustomText(
                          text: "#R4ED7Y - User",
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                        ),
                        SizedBox(height: 5),
                        CustomText(
                            text: "Rp. 150,000",
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.normal),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        SizedBox(height: 15),
                        Text(
                          "13:15",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const Divider();
            },
          ),
        ],
      ),
    );
  }
}
