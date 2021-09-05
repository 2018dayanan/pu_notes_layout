import 'package:flutter/material.dart';
import 'package:pu_note/widgets/categoryCard.dart';
// import 'package:flutter_svg/flutter_svg.dart';

import 'computer/computerMian.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);
  final String comTitle = "Computer";

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: Color(0xFFF5CEB8),
        title: Text(
          "PU NOTES",
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: Color(0xFFF5CEB8),
              // color: Color(0xFFbd040c),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 30),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(29.5),
                      color: Colors.white,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search",
                        // icon: SvgPicture.asset('assets/icons/search.svg'),
                        icon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: [
                        //Computer
                        CategoryCards(
                          title: "Computer",
                          icon: Icons.computer,
                          press: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ComputerMain()));
                          },
                        ),
                        CategoryCards(
                          title: "IT",
                          icon: Icons.computer,
                          press: () {},
                        ),
                        CategoryCards(
                          title: "Electronic",
                          icon: Icons.computer,
                          press: () {},
                        ),
                        CategoryCards(
                          title: "Electrical",
                          icon: Icons.computer,
                          press: () {},
                        ),
                        CategoryCards(
                          title: "BCA",
                          icon: Icons.computer,
                          press: () {},
                        ),
                        CategoryCards(
                          title: "Civil",
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
