import 'package:flutter/material.dart';
import 'package:flutter_application_tester/custom_text.dart';
import 'package:flutter_application_tester/screens/edit_menu_product.dart';

class DetailProduct extends StatefulWidget {
  const DetailProduct({super.key});

  @override
  State<DetailProduct> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
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
          "Detail",
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        actions: [
          PopupMenuButton<String>(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
            icon: const Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
            iconSize: 20,
            padding: const EdgeInsets.only(right: 17),
            onSelected: (String menu) {
              if (menu == "Edit") {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const EditMenu()),
                );
              } else {}
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'Edit',
                child: CustomText(
                  text: "Edit",
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const PopupMenuItem<String>(
                value: 'Hapus',
                child: CustomText(
                  text: "Hapus",
                  color: Colors.red,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
        leading: IconButton(
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
          iconSize: 20,
          icon: const Icon(Icons.arrow_back_ios),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Container(
              width: double.infinity,
              height: 197,
              padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
              margin: const EdgeInsets.fromLTRB(20, 20, 20, 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                image: const DecorationImage(
                  image: AssetImage("assets/images/sandwitch.png"),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
            Container(
              height: 20,
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  CustomText(
                      text: "sumber  : unsplash.com",
                      color: Colors.grey,
                      fontSize: 9,
                      fontWeight: FontWeight.w500),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Container(
              width: double.infinity,
              height: 45,
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  CustomText(
                      text: "Beef burger big",
                      color: Colors.black87,
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                  SizedBox(height: 8),
                  CustomText(
                      text: "Rp. 150000",
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ],
              ),
            ),
            ListView.separated(
              itemCount: 1,
              shrinkWrap: true,
              padding: const EdgeInsets.fromLTRB(20, 20, 25, 20),
              physics: const BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int position) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          // SizedBox(height: 10),
                          CustomText(
                            text:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                            color: Colors.black,
                            fontSize: 12,
                            height: 2,
                            fontWeight: FontWeight.w500,
                          ),
                          SizedBox(height: 25),
                          CustomText(
                            text: "Tags",
                            color: Colors.black,
                            fontSize: 14,
                            height: 2,
                            fontWeight: FontWeight.w500,
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
            ListView.separated(
              itemCount: 1,
              shrinkWrap: true,
              padding: const EdgeInsets.fromLTRB(5, 0, 0, 20),
              physics: const BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int position) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // width: 10,
                      margin: const EdgeInsets.fromLTRB(15, 0, 05, 0),
                      padding: const EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(4)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          CustomText(
                            text: "daging",
                            color: Colors.grey,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // width: 10,
                      margin: const EdgeInsets.fromLTRB(05, 0, 05, 0),
                      padding: const EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(4)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          CustomText(
                            text: "burger",
                            color: Colors.grey,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // width: 10,
                      margin: const EdgeInsets.fromLTRB(05, 0, 05, 0),
                      padding: const EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(4)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          CustomText(
                            text: "fastfood",
                            color: Colors.grey,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
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
      ),
    );
  }
}
