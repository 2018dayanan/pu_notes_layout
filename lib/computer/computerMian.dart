import 'package:flutter/material.dart';

import 'package:pu_note/widgets/categoryCard.dart';

import '../constants.dart';
import '1StSem/com1StSemMain.dart';
import '2NdSem/com2ndSemMain.dart';

class ComputerMain extends StatelessWidget {
  const ComputerMain({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final String comSeventhSem = ";
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: Color(0xFFF5CEB8),
        // backgroundColor: Colors.transparent,
        title: Text(
          "Computer".toUpperCase(),
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            height: size.height * .0,
            decoration: BoxDecoration(
              color: Color(0xFFF5CEB8),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: [
                        CategoryCards(
                          title: "1st Sem",
                          icon: Icons.computer,
                          press: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ComFirstSemMain()));
                          },
                        ),
                        CategoryCards(
                          title: "2nd sem",
                          icon: Icons.computer,
                          press: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ComSecondSemMain()));
                          },
                        ),
                        CategoryCards(
                          title: "3rd sem",
                          icon: Icons.computer,
                          press: () {},
                        ),
                        CategoryCards(
                          title: "4th sem",
                          icon: Icons.computer,
                          press: () {},
                        ),
                        CategoryCards(
                          title: "5th sem",
                          icon: Icons.computer,
                          press: () {},
                        ),
                        CategoryCards(
                          title: "6th sem",
                          icon: Icons.computer,
                          press: () {},
                        ),
                        CategoryCards(
                          title: "7th sem",
                          icon: Icons.computer,
                          press: () {},
                        ),
                        CategoryCards(
                          title: "8th sem",
                          icon: Icons.computer,
                          press: () {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
