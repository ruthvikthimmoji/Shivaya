import 'package:flutter/material.dart';
import 'package:shivaya/components/reuseable_card.dart';
import 'package:shivaya/screens/home_screen_shiva.dart';
import 'package:shivaya/screens/home_screen_vishnu.dart';
import 'package:shivaya/widgets/courosel.dart';

class HomeScreenMain extends StatelessWidget {
  const HomeScreenMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.contain,
              height: 40,
            ),
            Container(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Shivaya',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ))
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/uniBg.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CouroselCard(index: 0),
                SizedBox(height: 12),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: ReUsableCard(
                          colour: Color(0xff1d364a),
                          cardChild: Center(
                            child: Text(
                              'VISHNU',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          onPress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreenVishnu(),
                              ),
                            );
                          },
                        ),
                      ),
                      Expanded(
                        child: ReUsableCard(
                          colour: Color(0xff81bfe2),
                          cardChild: Center(
                            child: Text(
                              'SHIVA',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          onPress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreenShiva(),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
