import 'package:flutter/material.dart';
import 'package:flutter_application_tester/custom_text.dart';
import 'package:flutter_application_tester/theme.dart';

class EditMenu extends StatefulWidget {
  const EditMenu({super.key});

  @override
  State<EditMenu> createState() => _EditMenuState();
}

class _EditMenuState extends State<EditMenu> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Edit Menu",
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.delete),
            color: Colors.red,
            iconSize: 20,
            padding: const EdgeInsets.only(right: 17),
            onPressed: () {
              // handle the press
            },
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
            ListView.separated(
              itemCount: 1,
              shrinkWrap: true,
              padding: const EdgeInsets.fromLTRB(20, 20, 25, 0),
              physics: const BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int position) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 87,
                      height: 87,
                      padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                      margin: const EdgeInsets.fromLTRB(0, 20, 10, 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/sandwitch.png"),
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                      child: ListView(
                        padding: const EdgeInsets.fromLTRB(27, 30, 27, 0),
                        children: const [
                          CustomText(
                              text: "Cover",
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ],
                      ),
                    ),
                    Container(
                      width: 87,
                      height: 87,
                      padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                      margin: const EdgeInsets.fromLTRB(0, 20, 10, 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/cake.png"),
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                    ),
                    Container(
                      width: 87,
                      height: 87,
                      padding: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                      margin: const EdgeInsets.fromLTRB(0, 20, 20, 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/dashborder.png"),
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.photo_camera_outlined),
                        color: Colors.grey,
                        iconSize: 30,
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                        onPressed: () {
                          // handle the press
                        },
                      ),
                    ),
                  ],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Divider();
              },
            ),
            Container(
              height: 20,
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  CustomText(
                      text: "Item Name",
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Container(
              margin: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26),
                  borderRadius: BorderRadius.circular(6)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  CustomText(
                    text: "Sandwich Selai Strawberry",
                    color: Colors.black87,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            ),
            ListView.separated(
              itemCount: 1,
              shrinkWrap: true,
              padding: const EdgeInsets.fromLTRB(20, 20, 25, 0),
              physics: const BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int position) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          CustomText(
                            text: "Description",
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
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
            const SizedBox(height: 7),
            Container(
              margin: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26),
                  borderRadius: BorderRadius.circular(6)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  CustomText(
                    text:
                        "Sandwich lembut dengan selai strawberry yang enak untuk menemani waktu istirahatmu bersama teman-teman",
                    color: Colors.black,
                    fontSize: 13,
                    height: 2,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 17),
            Container(
              height: 20,
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  CustomText(
                      text: "Price",
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Container(
              margin: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                  border: Border.all(color: seaBlue),
                  borderRadius: BorderRadius.circular(6)),
              child: RichText(
                text: const TextSpan(
                  text: 'Rp. ',
                  style: TextStyle(
                      color: Colors.blueGrey, fontWeight: FontWeight.w600),
                  children: <TextSpan>[
                    TextSpan(
                        text: '15,000',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, color: Colors.black)),
                  ],
                ),
              ),
            ),
            ListView.separated(
              itemCount: 1,
              shrinkWrap: true,
              padding: const EdgeInsets.fromLTRB(20, 0, 25, 20),
              physics: const BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int position) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
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
              padding: const EdgeInsets.fromLTRB(5, 0, 0, 10),
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
                            text: "Alergan",
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
                            text: "Meat n steak",
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
                          border: Border.all(color: seaBlue),
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
                            text: "cereal",
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
            ListView.separated(
              itemCount: 1,
              shrinkWrap: true,
              padding: const EdgeInsets.fromLTRB(5, 0, 0, 10),
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
                            text: "Vegan",
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
                            text: "Rice",
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
                            text: "Lunch",
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
                            text: "Dessert",
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
                          border: Border.all(color: seaBlue),
                          borderRadius: BorderRadius.circular(4)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          CustomText(
                            text: "Snack",
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
                            text: "West",
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
                            text: "East",
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
                            text: "Indonesian",
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
                          border: Border.all(color: seaBlue),
                          borderRadius: BorderRadius.circular(4)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          CustomText(
                            text: "Authentic",
                            color: Colors.grey,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(05, 0, 05, 0),
                      padding: const EdgeInsets.all(7),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(4)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          CustomText(
                            text: "+add",
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
      bottomNavigationBar: Container(
        height: 50,
        margin: const EdgeInsets.all(15),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: seaBlue,
                ),
                alignment: Alignment.center,
                child: const Text("Done",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
