import 'package:books/components/style.dart';
import 'package:books/database.dart/database.dart';
import 'package:books/screen/account/account_page.dart';
import 'package:books/screen/book/book_page.dart';
import 'package:books/screen/history/history_page.dart';
import 'package:books/screen/home/details/HomeTitle/home_title.dart';
import 'package:books/screen/home/details/baru/baru_datang.dart';
import 'package:books/screen/home/details/cotegory/cotegory.dart';
import 'package:books/screen/home/details/search/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'details/recomendasi/recomendasi.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int _currentIndex = 0;
  final List _children = [
    BodyHomeScreen(),
    BookScreen(),
    HistoryScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      
      bottomNavigationBar:   BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: kPrimaryColor,
            icon: SvgPicture.asset("assets/homeNavbar.svg"),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: kPrimaryColor,
            icon: SvgPicture.asset("assets/bookNavbar.svg"),
            label: 'Book',
          ),
          BottomNavigationBarItem(
            backgroundColor: kPrimaryColor,
            icon: SvgPicture.asset("assets/historyNavbar.svg"),
            label: 'History',
          ),
          BottomNavigationBarItem(
            backgroundColor: kPrimaryColor,
            icon: SvgPicture.asset("assets/personNavbar.svg"),
            label: 'Profile',
          ),
        ],
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
      )
    );
  }
    void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}




BaruDutang currentBaruDatang = BaruDutang(
  name: "Title",
  image: "assets/book_1.png",
  subname: " "
);

double currentSlider = 0;
  

class BodyHomeScreen extends StatefulWidget {
  @override
  _BodyHomeScreenState createState() => _BodyHomeScreenState();
}


class _BodyHomeScreenState extends State<BodyHomeScreen> {

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 32),
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          
          //Title
          HomeTitle(height: height),
         
          //Search
          const SearchHome(),
      
          //Category
          CotegoryTitle(height: height),
          CategoryHome(height: height),
          
          //BaruDatangTitle
          BaruDatangTitle(height: height),
          
          SizedBox(
            height: 270,
            child: BaruDatangCard(refResh)
          ),
          RecomendasiTitle(height: height,),
          const RecomdasiCard(),

          SizedBox(height: height*0.04),


        ],
      ),
    );
  }
  refResh(){
    setState(() {
   
    });
  }
}

