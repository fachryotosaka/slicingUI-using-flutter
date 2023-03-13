import 'package:flutter/material.dart';
import 'package:flutter_application_tester/custom_text.dart';
import 'detail_product_page.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List<String> Users = [
    "Beef burger big",
    "Beef burger big",
    "Beef burger big",
    "Beef burger big",
    "Beef burger big",
    "Beef burger big",
    "Beef burger big",
  ];
  List<String> Price = [
    "Rp. 15.000",
    "Rp. 15.000",
    "Rp. 15.000",
    "Rp. 15.000",
    "Rp. 15.000",
    "Rp. 15.000",
    "Rp. 15.000",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Teenant Product",
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add),
            color: Colors.black,
            iconSize: 20,
            padding: const EdgeInsets.only(right: 17),
            onPressed: () {
              // handle the press
            },
          ),
        ],
        backgroundColor: Colors.white,
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DetailProduct()),
          );
        },
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            ListView.separated(
              itemCount: Users.length,
              shrinkWrap: true,
              padding: const EdgeInsets.all(20),
              physics: const BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                // versi 1 bagus tapi ga bisa ontap

                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                        width: 38,
                        height: 38,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/beef.png"),
                            fit: BoxFit.fitWidth,
                            alignment: Alignment.topCenter,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(height: 10),
                          CustomText(
                            text: "Beef burger big",
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Rp. 15,000",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                  ],
                );

                //  versi 2 bisa onTap tapi kurang bagus

                // return Container(
                //   margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                //   child: ListTile(
                //     title: CustomText(
                //         text: Users[index],
                //         color: Colors.black,
                //         fontSize: 14,
                //         fontWeight: FontWeight.normal),
                //     subtitle: CustomText(
                //       text: Price[index],
                //       color: Colors.grey,
                //       fontSize: 12,
                //       fontWeight: FontWeight.w500,
                //     ),
                //     leading: Image.asset(
                //       'assets/images/beef.png',
                //       height: 38,
                //       width: 38,
                //     ),
                //     onTap: () {
                //       Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //               builder: (context) => const DetailProduct()));
                //     },
                //   ),
                // );
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
