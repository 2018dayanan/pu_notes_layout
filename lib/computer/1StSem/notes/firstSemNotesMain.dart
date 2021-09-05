import 'package:flutter/material.dart';
import 'package:pu_note/widgets/categoryCard.dart';

import '../../../constants.dart';

class Com1StSemNotes extends StatelessWidget {
  const Com1StSemNotes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: Color(0xFFF5CEB8),
        // backgroundColor: Colors.transparent,
        title: Text(
          "Subjects".toUpperCase(),
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
                          title: "Computer Programming",
                          icon: Icons.computer,
                          press: () {},
                        ),
                        CategoryCards(
                          title: "Physics",
                          icon: Icons.computer,
                          press: () {},
                        ),
                        CategoryCards(
                          title: "Math-I",
                          icon: Icons.computer,
                          press: () {},
                        ),
                        CategoryCards(
                          title: "Communicative English",
                          icon: Icons.computer,
                          press: () {},
                        ),
                        CategoryCards(
                          title: "",
                          icon: Icons.computer,
                          press: () {},
                        ),
                        CategoryCards(
                          title: "Element and device of computing technology",
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
