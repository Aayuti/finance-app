import 'package:finance_app/Auth/loginAuth.dart';
import 'package:finance_app/screens/AddTransactions.dart';
import 'package:finance_app/screens/DealsPage.dart';
import 'package:finance_app/screens/HomePage.dart';
import 'package:finance_app/screens/LearnMore.dart';
import 'package:flutter/material.dart';

class DefaultPage extends StatefulWidget {
  const DefaultPage({super.key});

  @override
  State<DefaultPage> createState() => _DefaultPageState();
}

class _DefaultPageState extends State<DefaultPage> {
  int selectedPage = 0;

  final List<Widget> _pageOptions = [
    const HomePageWidget(),
    const TransactionADDWidget(),
    const OffersWidget(),
    const LearnMoreWidget(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 9, 8, 8),
        body: _pageOptions[selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 18, 18, 19),
          selectedItemColor: Color(0XFFF1BCEF),
          unselectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          //selectedItemColor: Color.fromARGB(255, 148, 26, 144),
          elevation: 5.0,
          //unselectedItemColor: Color.fromARGB(255, 45, 10, 44),
          currentIndex: selectedPage,
          onTap: (index) {
            setState(() {
              selectedPage = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, size: 30), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.currency_rupee, size: 30), label: 'Expense'),
            BottomNavigationBarItem(
                icon: Icon(Icons.percent, size: 30), label: 'Offers'),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu_book_sharp, size: 30), label: 'Learn'),
          ],
        ));
  }
}
