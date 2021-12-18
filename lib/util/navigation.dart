import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meko/pages/payment_successful.dart';
import 'package:meko/util/theme_colors.dart';


class Navigation extends StatefulWidget {
  final selectedIndex;
  ValueChanged<int> onClicked;
  Navigation({Key? key, this.selectedIndex : 0, required this.onClicked }) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int selectedIndex = 0;
  ValueChanged<int> onClicked = (int index) {};
  // void onClicked(int index) {
  //   setState(() {
  //     selectedIndex = index;
  //   });
  // }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedIndex = widget.selectedIndex;
    onClicked = widget.onClicked;
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Column(
            children: [
              Container(


                child: Stack(
                  children: <Widget>[
                    Positioned(
                      child: Navigationhold(selectedIndex, onClicked),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
  Widget Navigationhold(final selectedIndex, ValueChanged<int> onClicked) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.analytics),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet),label: 'Services',),
          BottomNavigationBarItem(icon: Icon(Icons.warning_rounded),label: 'Notification',),
          BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle_rounded),label: 'Account',),
        ],
        currentIndex: selectedIndex,
        onTap: (onClicked){
          switch(onClicked){
            case 0: Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => paymentSuccessful()));
            break;
            case 1: Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => paymentSuccessful()));
            break;
            case 2: Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => paymentSuccessful()));
            break;
            case 3: Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => paymentSuccessful()));

          }
        },
        selectedItemColor: Colors.white,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        backgroundColor: Colors.green.withOpacity(0),
        elevation: 0,
        unselectedItemColor: Colors.black,
      ),

    );
  }
}

